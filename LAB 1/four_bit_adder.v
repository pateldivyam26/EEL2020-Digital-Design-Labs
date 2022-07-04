`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2022 16:17:07
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(A,B,S,Carry);
input [3:0]A,B;
output [3:0]S;
output Carry;
reg C0 = 1'b0;
wire C1,C2,C3;
full_adder FA1(A[0],B[0],C0,S[0],C1);
full_adder FA2(A[1],B[1],C1,S[1],C2);
full_adder FA3(A[2],B[2],C2,S[2],C3);
full_adder FA4(A[3],B[3],C3,S[3],Carry);

endmodule
