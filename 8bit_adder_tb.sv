`timescale 1ns / 1ps

// Exhaustive 8-bit testbench for all three adder implementations.
// Engineer: Carlos Diaz
// Organization: Cal Poly SLO
// Class: CPE 5350, 2026, Dr. Danowitz
// I needed to add the \ in the module name because I started it with an 8

module adder_8bit_tb ;

    localparam int WIDTH = 8;
    localparam int VALUES = 1 << WIDTH;
    localparam int TOTAL_CASES = VALUES * VALUES * 2;

    // All three adders receive the same inputs.
    logic [WIDTH-1:0] A, B;
    logic Cin;

    wire [WIDTH-1:0] ripple_sum, tree_sum, behavioral_sum;
    wire ripple_cout, tree_cout, behavioral_cout;

    // Include the extra bit so the expected result preserves carry-out.
    logic [WIDTH:0] expected;

    int unsigned tests_run = 0;
    int unsigned ripple_errors = 0;
    int unsigned tree_errors = 0;
    int unsigned behavioral_errors = 0;

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

    //  Case equality (===) makes unknown (X) or undriven (Z) output bits fail the comparison too.
    // A task is similar to a function in C 
    // automatic means it can be safely used multiple times concurrently, because it won't share resources between function calls 
    task automatic check_result (
        input string adder_name,
        input logic [WIDTH:0] actual,
        inout int unsigned error_count
    );
        assert (actual === expected) else begin
            error_count++;

            // Continue testing every input, but limit console output
            // to the first ten failures for each implementation.
            if (error_count <= 10) begin
                $display("FAIL [%s]: A=%0d B=%0d Cin=%b expected=%09b actual=%09b",
                         adder_name, A, B, Cin, expected, actual);
            end
        end
    endtask

    initial begin
        A = '0;
        B = '0;
        Cin = 1'b0;
        expected = '0;

        $display("Starting exhaustive 8-bit verification: %0d cases per adder.",
                 TOTAL_CASES);

        // Integer loop counters can reach 256 and terminate correctly.
        // An 8-bit counter would wrap from 255 to 0 instead.
        for (int a_value = 0; a_value < VALUES; a_value++) begin
            for (int b_value = 0; b_value < VALUES; b_value++) begin
                for (int cin_value = 0; cin_value < 2; cin_value++) begin
                    A = a_value[WIDTH-1:0];
                    B = b_value[WIDTH-1:0];
                    Cin = cin_value[0];

                    // Independent arithmetic reference using integer
                    // counters. The maximum result is 511 (9 bits).
                    expected = a_value + b_value + cin_value;

                    // Let combinational RTL settle
                    #1;

                    check_result("Ripple", {ripple_cout, ripple_sum},
                                 ripple_errors);
                    check_result("Sklansky", {tree_cout, tree_sum},
                                 tree_errors);
                    check_result("Behavioral", {behavioral_cout, behavioral_sum},
                                 behavioral_errors);

                    tests_run++;
                end
            end
        end

        $display("Completed %0d input cases per adder (%0d comparisons total).",
                 tests_run, tests_run * 3);
        $display("Mismatch counts: Ripple=%0d Sklansky=%0d Behavioral=%0d",
                 ripple_errors, tree_errors, behavioral_errors);

        if ((tests_run != TOTAL_CASES) ||
            (ripple_errors != 0) || (tree_errors != 0) ||
            (behavioral_errors != 0)) begin
            $fatal(1, "FAIL: Exhaustive verification did not pass.");
        end else begin
            $display("PASS: All three adders passed all 131072 input combinations.");
            $finish;
        end
    end

endmodule
