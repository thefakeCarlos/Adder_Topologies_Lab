// This module implements a parameterized N-bit ripple_carry_adder using full
// adders from fulladder.sv, the multibit signals are implemented using packed
// arrays
// Engineer: Carlos Diaz
// Organzation: Cal Poly Slo
// Class: CPE 5350, 2026, Dr. Danowitz

module ripple_carry_adder #(parameter int WIDTH = 64) ( // Default Width is 8-bits, this can be changed in instantiation using ripple_carry_adder #(.WIDTH(16)) my_adder
        input wire [WIDTH-1:0]A,
        input wire [WIDTH-1:0]B,
        input wire Cin,            // Carry in
        output wire [WIDTH-1:0]S,  // Sum
        output wire Cout           // Carry Out

  );

  genvar i; //index var for the generate for loop
  wire [WIDTH-1:0]Carry; // Array for internal full adder carry signals

  generate
  for (i = 0; i < WIDTH; i = i + 1) begin: adder_stage


    if (i == 0)begin
      fulladder fulladder(.A(A[i]), .B(B[i]), .Cin(Cin), .Cout(Carry[i]), .S(S[i])); // Carry comes from Cin top level input, this is for the first adder in the chain 
    end

    else begin
      fulladder fulladder(.A(A[i]), .B(B[i]), .Cin(Carry[i-1]), .Cout(Carry[i]), .S(S[i])); // Carry comes from prevous full adder, this is for every other adder in the chain
    end


    end
  endgenerate 

  assign Cout = Carry[WIDTH-1]; // Carry out comes from the last full adder's carry out


  endmodule 
