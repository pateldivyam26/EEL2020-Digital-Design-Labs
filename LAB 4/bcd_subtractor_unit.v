`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 13:09:19
// Design Name: 
// Module Name: bcd_subtractor_unit
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

module tens_complement(A,X);
    input [3:0] A;
    output [3:0] X;
    
    assign X[3] = ~(A[3]|A[2]) & ~(A[1]&A[0]);
    assign X[2] = A[2]^(A[1]&A[0]);
    assign X[1] = ~(A[1]^A[0]);
    assign X[0] = A[0];
endmodule

module bcd_subtractor_unit(A,B,S, carry);
    input [3:0] A,B;
    output [3:0] S;
    output carry;
    wire [3:0] B_comp,Z,Z_comp;
    wire C;

    tens_complement TC1(B,B_comp);
    BCD_adder_unit BCDA2(A,B_comp,Z,C);
    tens_complement TC2(Z,Z_comp);
    assign S = C?Z:Z_comp;
    assign carry = C?0:1; 
endmodule
