`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2022 16:00:07
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(A,B,C,Sum,Carry);
input A,B,C;
output Sum, Carry;
wire Sum1, Carry1, Carry2;
half_adder H1(A,B,Sum1,Carry1);
half_adder H2(Sum1,C,Sum,Carry2);
assign Carry = Carry1|Carry2;

endmodule
