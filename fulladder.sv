
// This module implements a one-bit full adder using boolean algebra
// Engineer: Carlos Diaz
// Organzation: Cal Poly Slo
// Class: CPE 5350, 2026, Dr. Danowitz
module fulladder(
  input wire A, 
  input wire B,
  input wire Cin,   // Carry In
  output wire S,    // Sum
  output wire Cout  // Carry Out 
  ); 

  assign S = (A ^ B ^ Cin); // ^ is the boolean symbol for XOR in verilog
  assign Cout = (A&B) | (Cin & (A^B)); // & is the symbol for AND, | in the symbol for OR

endmodule 
