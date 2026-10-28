// Parameterized N-bit Sklansky parallel-prefix adder.
// This should scale logirithmicaly with width, instead of linearly like the
// ripple-carry adder
//
// Engineer: Carlos Diaz
// Organization: Cal Poly SLO
// Class: CPE 5350, 2026, Dr. Danowitz

module tree_adder #(parameter int WIDTH = 64) (
    input  wire [WIDTH-1:0] A,
    input  wire [WIDTH-1:0] B,
    input  wire             Cin,
    output wire [WIDTH-1:0] S,
    output wire             Cout
);

    localparam int STAGES = $clog2(WIDTH);

    // Initial carry behavior of each individual bit.
    wire [WIDTH-1:0] Generate;
    wire [WIDTH-1:0] Propagate;

    assign Generate  = A & B;
    assign Propagate = A ^ B;

    // Each row contains one G/P result per bit position.
    // Row 0 holds the initial signals.
    // Rows 1 through STAGES hold the tree's successive results.
    wire [WIDTH-1:0] G [0:STAGES];
    wire [WIDTH-1:0] P [0:STAGES];

    // assign the generate and propagate values for stage 0
    assign G[0] = Generate;
    assign P[0] = Propagate;

    genvar stage, bit_index;
    generate
        for (stage = 0; stage < STAGES;
             stage = stage + 1) begin : tree_stage

            // HALF doubles each stage: 1, 2, 4, ...
            // Therefore, group sizes are 2, 4, 8, ...
            localparam int HALF = 1 << stage; // Half of the group size is 2 to the power of stage
            localparam int GROUP_SIZE = 2 * HALF;

            for (bit_index = 0; bit_index < WIDTH;
                 bit_index = bit_index + 1) begin : tree_bit

                // Find the starting index of this bit's group.
                // Integer division discards the remainder.
                // Example: bit 6 in a group of 4:
                // (6 / 4) * 4 = 1 * 4 = 4.
                localparam int GROUP_START =
                    (bit_index / GROUP_SIZE) * GROUP_SIZE;

                // Find the last position in the group's lower half.
                // Example: group 4-7 has lower half 4-5,
                // so PARTNER = 4 + 2 - 1 = 5.
                localparam int PARTNER =
                    GROUP_START + HALF - 1;

                // Upper-half positions combine with PARTNER.
                // Example: positions 6 and 7 both combine with 5.
                if (bit_index > PARTNER) begin : combine

                    // Generate a carry if the upper portion generates,
                    // OR if it propagates a carry generated below it.
                    // Both inputs come from the PREVIOUS tree row.
                    assign G[stage+1][bit_index] =
                        G[stage][bit_index] |
                        (P[stage][bit_index] & G[stage][PARTNER]);

                    // The combined range propagates a carry only
                    // when both portions propagate it.
                    assign P[stage+1][bit_index] =
                        P[stage][bit_index] & P[stage][PARTNER];

                end else begin : pass_through

                    // Lower-half positions keep their previous results.
                    // These are direct wire connections.
                    assign G[stage+1][bit_index] =
                        G[stage][bit_index];

                    assign P[stage+1][bit_index] =
                        P[stage][bit_index];

                end
            end
        end
    endgenerate

    // Carry[k] is the carry ENTERING bit k.
    // Carry[WIDTH] is the carry leaving the highest bit.
    wire [WIDTH:0] Carry;

    assign Carry[0] = Cin;

    genvar k;
    generate
        for (k = 0; k < WIDTH; k = k + 1) begin : output_stage

            // The final G/P at position k describes bits k:0.
            // Those bits either generate a carry themselves,
            // or propagate the external Cin through the whole range.
            //
            // Each carry comes directly from the tree and Cin;
            // this calculation does not form a ripple-carry chain.
            assign Carry[k+1] =
                G[STAGES][k] | (P[STAGES][k] & Cin);

            // Full-adder sum equation:
            // S[k] = A[k] XOR B[k] XOR carry entering bit k.
            // Use the ORIGINAL per-bit propagate signal here.
            assign S[k] = Propagate[k] ^ Carry[k];

        end
    endgenerate

    assign Cout = Carry[WIDTH];

endmodule
