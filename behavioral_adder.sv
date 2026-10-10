
// This module implements a parameterized N-bit behavior adder, this lets
// verilog pick how to implement the adder in hardware
// Engineer: Carlos Diaz
// Organzation: Cal Poly Slo
// Class: CPE 5350, 2026, Dr. Danowitz

module behavioral_adder #(parameter int WIDTH = 8) ( // Default Width is 8-bits, this can be changed in instantiation using behavioral_adder #(.WIDTH(16)) my_adder
        input wire [WIDTH-1:0]A,
        input wire [WIDTH-1:0]B,
        input wire Cin,            // Carry in
        output wire [WIDTH-1:0]S,  // Sum
        output wire Cout           // Carry Out

  );

  assign {Cout, S} = A + B + Cin; // The first N bits represent the sum, and the (N+1)th bit represents the Cout and it will be one in case of a overflow 


  endmodule 
