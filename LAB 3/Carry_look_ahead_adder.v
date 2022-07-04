`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2022 12:29:07
// Design Name: 
// Module Name: Carry_look_ahead_adder
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

module four_bit_adder(A,B,C0,S,C_out);
    input [3:0] A,B;
    input C0;
    output [3:0] S;
    output C_out;
    wire [3:0] P,C,G;

    assign #10 P[0] = A[0]^B[0]; assign #10 P[1] = A[1]^B[1]; assign #10 P[2] = A[2]^B[2]; assign #10 P[3] = A[3]^B[3];
    assign #5 G[0] = A[0]&B[0]; assign #5 G[1] = A[1]&B[1]; assign #5 G[2] = A[2]&B[2]; assign #5 G[3] = A[3]&B[3];
    assign C[0] = C0;
    assign #10 C[1] = G[0]|(P[0]&C[0]);
    assign #10 C[2] = G[1]|(P[1]&G[0])|(P[1]&P[0]&C[0]);
    assign #10 C[3] = G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&C[0]);
    assign #10 C_out = G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&C[0]);
    assign #10 S[0] = P[0]^C[0];
    assign #10 S[1] = P[1]^C[1];
    assign #10 S[2] = P[2]^C[2];
    assign #10 S[3] = P[3]^C[3];
endmodule

module Carry_look_ahead_adder(A,B,S,C);
    input [31:0] A,B;
    output [31:0] S;
    output C;
    reg C0 = 1'b0;
    wire C1,C2,C3,C4,C5,C6,C7;

    four_bit_adder FBA1(A[3:0],B[3:0],C0,S[3:0],C1);
    four_bit_adder FBA2(A[7:4],B[7:4],C1,S[7:4],C2);
    four_bit_adder FBA3(A[11:8],B[11:8],C2,S[11:8],C3);
    four_bit_adder FBA4(A[15:12],B[15:12],C3,S[15:12],C4);
    four_bit_adder FBA5(A[19:16],B[19:16],C4,S[19:16],C5);
    four_bit_adder FBA6(A[23:20],B[23:20],C5,S[23:20],C6);
    four_bit_adder FBA7(A[27:24],B[27:24],C6,S[27:24],C7);
    four_bit_adder FBA8(A[31:28],B[31:28],C7,S[31:28],C);
endmodule
