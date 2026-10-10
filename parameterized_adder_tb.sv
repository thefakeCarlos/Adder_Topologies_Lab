`timescale 1ns / 1ps

// Directed and randomized functional verification of three adder topologies.
// Engineer: Carlos Diaz
// Organization: Cal Poly SLO
// Class: CPE 5350, 2026, Dr. Danowitz
//
// Run separately with WIDTH = 16, 32, 64
module parameterized_adder_tb #(
    parameter int WIDTH = 16,
    parameter int RANDOM_CASES = 5000,
    parameter int SEED = 12345
);

    localparam logic [WIDTH-1:0] ZERO = '0;
    localparam logic [WIDTH-1:0] ONES = '1;
    localparam logic [WIDTH-1:0] ONE = {{(WIDTH-1){1'b0}}, 1'b1};
    localparam logic [WIDTH-1:0] MSB = ONE << (WIDTH-1);

    // All adders receive identical inputs; each has its own output wires.
    logic [WIDTH-1:0] A, B;
    logic Cin;
    wire [WIDTH-1:0] ripple_sum, tree_sum, behavioral_sum;
    wire ripple_cout, tree_cout, behavioral_cout;
    logic [WIDTH:0] expected;

    int unsigned tests_run = 0;
    int unsigned directed_cases = 0;
    int unsigned random_cases_run = 0;
    int unsigned ripple_errors = 0;
    int unsigned tree_errors = 0;
    int unsigned behavioral_errors = 0;

    logic [WIDTH-1:0] alternating;
    logic [WIDTH-1:0] one_hot;
    logic [WIDTH-1:0] chain_mask;
    logic [WIDTH-1:0] random_a, random_b;
    logic random_cin;
    int rng_seed;
    int unsigned seed_discard;

    ripple_carry_adder #(.WIDTH(WIDTH)) dut_ripple (
        .A(A), .B(B), .Cin(Cin),
        .S(ripple_sum), .Cout(ripple_cout)
    );

    tree_adder #(.WIDTH(WIDTH)) dut_tree (
        .A(A), .B(B), .Cin(Cin),
        .S(tree_sum), .Cout(tree_cout)
    );

    behavioral_adder #(.WIDTH(WIDTH)) dut_behavioral (
        .A(A), .B(B), .Cin(Cin),
        .S(behavioral_sum), .Cout(behavioral_cout)
    );

    // Reusable checker. === rejects X/Z outputs when expected is known.
    // Continue after errors to obtain complete mismatch counts, while
    // printing only the first ten failures per implementation.
    task automatic check_result (
        input string adder_name,
        input string case_name,
        input logic [WIDTH:0] actual,
        inout int unsigned error_count
    );
        assert (actual === expected) else begin
            error_count++;
            if (error_count <= 10) begin
                $display("FAIL [%s] %s WIDTH=%0d case=%0d A=%h B=%h Cin=%b expected=%h actual=%h",
                         adder_name, case_name, WIDTH, tests_run + 1,
                         A, B, Cin, expected, actual);
            end
        end
    endtask

    // Drive one vector, allow zero-delay combinational RTL to settle,
    // then compare both carry and sum for every architecture.
    task automatic run_case (
        input logic [WIDTH-1:0] a_value,
        input logic [WIDTH-1:0] b_value,
        input logic cin_value,
        input string case_name
    );
        A = a_value;
        B = b_value;
        Cin = cin_value;

        // WIDTH+1-bit arithmetic preserves carry-out, including at WIDTH=64.
        // Do not store the reference in a 32-bit integer.
        expected = {1'b0, a_value} + {1'b0, b_value} + cin_value;
        #1;

        check_result("Ripple", case_name,
                     {ripple_cout, ripple_sum}, ripple_errors);
        check_result("Sklansky", case_name,
                     {tree_cout, tree_sum}, tree_errors);
        check_result("Behavioral", case_name,
                     {behavioral_cout, behavioral_sum}, behavioral_errors);
        tests_run++;
    endtask

    // Each directed operand pair is checked with both carry-in values.
    task automatic test_pair (
        input logic [WIDTH-1:0] a_value,
        input logic [WIDTH-1:0] b_value,
        input string case_name
    );
        run_case(a_value, b_value, 1'b0, case_name);
        run_case(a_value, b_value, 1'b1, case_name);
    endtask

    initial begin
        if (WIDTH < 1)
            $fatal(1, "WIDTH must be positive.");
        if (RANDOM_CASES < 0)
            $fatal(1, "RANDOM_CASES must not be negative.");

        A = ZERO;
        B = ZERO;
        Cin = 1'b0;
        expected = '0;

        // Seed once. Reusing SEED and settings reproduces the random
        // sequence in the same simulator; do not reseed every vector.
        rng_seed = SEED;
        seed_discard = $urandom(rng_seed);

        $display("Starting adder verification: WIDTH=%0d RANDOM_CASES=%0d SEED=%0d",
                 WIDTH, RANDOM_CASES, SEED);

        // Build ...101010, with bit 0 clear, at the selected width.
        alternating = ZERO;
        for (int bit_number = 0; bit_number < WIDTH; bit_number++)
            alternating[bit_number] = (bit_number % 2) != 0;

        // Basic values, carry-out, full-word propagation, alternating
        // patterns, and transitions around the most significant bit.
        test_pair(ZERO, ZERO, "zero + zero");
        test_pair(ONES, ZERO, "all ones + zero / Cin propagation");
        test_pair(ZERO, ONES, "zero + all ones / Cin propagation");
        test_pair(ONES, ONES, "all ones + all ones");
        test_pair(ONES, ONE, "all ones + one / carry-out");
        test_pair(ONE, ONES, "one + all ones / carry-out");
        test_pair(alternating, ~alternating, "complementary alternating");
        test_pair(alternating, alternating, "matching alternating");
        test_pair(~alternating, ~alternating, "matching inverse alternating");
        test_pair(ONE, ONE, "one + one");
        test_pair(MSB, MSB, "MSB + MSB");
        test_pair(MSB, MSB - ONE, "MSB + lower bits set");
        test_pair(MSB - ONE, ONE, "carry into MSB");
        test_pair(ONE, MSB - ONE, "carry into MSB / operands swapped");

        // Walk a single one and a single zero through all positions.
        for (int bit_number = 0; bit_number < WIDTH; bit_number++) begin
            one_hot = ZERO;
            one_hot[bit_number] = 1'b1;
            test_pair(one_hot, ZERO, "walking one in A");
            test_pair(ZERO, one_hot, "walking one in B");
            test_pair(one_hot, one_hot, "carry generation at each bit");
            test_pair(~one_hot, one_hot, "complementary walking pattern");
            test_pair(~one_hot, ZERO, "walking zero / carry stopping");
        end

        // Exercise every contiguous carry span, including spans crossing
        // 2-, 4-, 8-, 16-, and 32-bit prefix-group boundaries.
        // A has ones from start_bit through end_bit; B has one at start_bit.
        // With Cin=0, the start generates a carry, subsequent ones propagate
        // it, and the next zero stops it (or it exits through Cout).
        for (int start_bit = 0; start_bit < WIDTH; start_bit++) begin
            one_hot = ZERO;
            one_hot[start_bit] = 1'b1;
            chain_mask = ZERO;
            for (int end_bit = start_bit; end_bit < WIDTH; end_bit++) begin
                chain_mask[end_bit] = 1'b1;
                test_pair(chain_mask, one_hot, "contiguous carry span");
                test_pair(one_hot, chain_mask, "carry span / operands swapped");
            end
        end

        directed_cases = tests_run;
        $display("Directed cases completed: %0d per adder.", directed_cases);

        // Generate every operand bit independently so random tests also
        // exercise upper bits when WIDTH exceeds $urandom's 32-bit result.
        for (int sample = 0; sample < RANDOM_CASES; sample++) begin
            for (int bit_number = 0; bit_number < WIDTH; bit_number++) begin
                random_a[bit_number] = $urandom_range(1, 0);
                random_b[bit_number] = $urandom_range(1, 0);
            end
            random_cin = $urandom_range(1, 0);
            run_case(random_a, random_b, random_cin, "random");
            random_cases_run++;
        end

        $display("WIDTH=%0d SEED=%0d: directed=%0d random=%0d total=%0d per adder",
                 WIDTH, SEED, directed_cases, random_cases_run, tests_run);
        $display("Mismatch counts: Ripple=%0d Sklansky=%0d Behavioral=%0d",
                 ripple_errors, tree_errors, behavioral_errors);

        if ((ripple_errors != 0) || (tree_errors != 0) ||
            (behavioral_errors != 0)) begin
            $fatal(1, "FAIL: One or more adders produced incorrect results.");
        end else begin
            $display("PASS: All three adders passed %0d cases each at WIDTH=%0d.",
                     tests_run, WIDTH);
            $finish;
        end
    end

endmodule
