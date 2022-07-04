`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2022 23:35:35
// Design Name: 
// Module Name: carry_skip_adder
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

module full_skip_adders(A,B,C,S,S0,C_out);
    input A,B,C;
    output S,S0,C_out;
    wire C1,C2;

    assign #10 S0=A^B;
    assign #5 C1=A&B;
    assign #10 S=S0^C;
    assign #5 C2=S0&C;
    assign #5 C_out=C2|C1;
endmodule

module skip_adder(A,B,C0,S,carry);
    input [3:0]A,B;
    input C0;
    output [3:0]S;
    output carry;
    wire [3:0] P;
    wire C1,C2,C3,C4,PS;


    full_skip_adders FSAa(A[0], B[0], C0, S[0], P[0], C1);
    full_skip_adders FSAb(A[1], B[1], C1, S[1], P[1], C2);
    full_skip_adders FSAc(A[2], B[2], C2, S[2], P[2], C3);
    full_skip_adders FSAd(A[3], B[3], C3, S[3], P[3], C4);
    assign #5 PS = P[0]&P[1]&P[2]&P[3];
    mux Ms(C4, C0, PS, carry);
endmodule

module carry_skip_adder(A,B,S,C);
    input [31:0] A,B;
    output [31:0] S;
    output C;
    reg C0 = 1'b0;
    wire C1, C2, C3, C4, C5, C6, C7;

    skip_adder SA1(A[3:0], B[3:0], C0, S[3:0], C1);
    skip_adder SA2(A[7:4], B[7:4], C1, S[7:4], C2);
    skip_adder SA3(A[11:8], B[11:8], C2, S[11:8], C3);
    skip_adder SA4(A[15:12], B[15:12], C3, S[15:12], C4);
    skip_adder SA5(A[19:16], B[19:16], C4, S[19:16], C5);
    skip_adder SA6(A[23:20], B[23:20], C5, S[23:20], C6);
    skip_adder SA7(A[27:24], B[27:24], C6, S[27:24], C7);
    skip_adder SA8(A[31:28], B[31:28], C7, S[31:28], C);
endmodule
