`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2022 15:39:05
// Design Name: 
// Module Name: carry_select_adder
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


module mux(X,Y,S,O);
    input X,Y,S;
    output O;

    assign O=S?Y:X;
endmodule

module full_adders(A,B,C,S,C_out);
    input A,B,C;
    output S,C_out;
    wire S0,C1,C2;

    assign #10 S0=A^B;
    assign #5 C1=A&B;
    assign #10 S=S0^C;
    assign #5 C2=S0&C;
    assign #5 C_out=C2|C1;
endmodule

module four_bits_adder(A,B,C0,S,carry);
    input [3:0]A,B;
    input C0;
    output [3:0]S;
    output carry;
    wire C1,C2,C3;

    full_adders FAa(A[0],B[0],C0,S[0],C1);
    full_adders FAb(A[1],B[1],C1,S[1],C2);
    full_adders FAc(A[2],B[2],C2,S[2],C3);
    full_adders FAd(A[3],B[3],C3,S[3],carry);
endmodule

module carry_select_adder(A,B,S,C_out);
    input [31:0] A,B;
    output [31:0] S;
    output C_out;
    reg Ca=1'b0,Cb=1'b1;
    wire C8a,C2a,C3a,C4a,C5a,C6a,C7a,C8b,C2b,C3b,C4b,C5b,C6b,C7b,C1,C2,C3,C4,C5,C6,C7;
    wire [31:4] S1,S2;

    four_bits_adder FBAa(A[3:0],B[3:0],Ca,S[3:0],C1);
    four_bits_adder FBAb(A[7:4],B[7:4],Ca,S1[7:4],C2a);
    four_bits_adder FBAc(A[7:4],B[7:4],Cb,S2[7:4],C2b);
    four_bits_adder FBAd(A[11:8],B[11:8],Ca,S1[11:8],C3a);
    four_bits_adder FBAe(A[11:8],B[11:8],Cb,S2[11:8],C3b);
    four_bits_adder FBAf(A[15:12],B[15:12],Ca,S1[15:12],C4a);
    four_bits_adder FBAg(A[15:12],B[15:12],Cb,S2[15:12],C4b);
    four_bits_adder FBAh(A[19:16],B[19:16],Ca,S1[19:16],C5a);
    four_bits_adder FBAi(A[19:16],B[19:16],Cb,S2[19:16],C5b);
    four_bits_adder FBAj(A[23:20],B[23:20],Ca,S1[23:20],C6a);
    four_bits_adder FBAk(A[23:20],B[23:20],Cb,S2[23:20],C6b);
    four_bits_adder FBAl(A[27:24],B[27:24],Ca,S1[27:24],C7a);
    four_bits_adder FBAm(A[27:24],B[27:24],Cb,S2[27:24],C7b);
    four_bits_adder FBAn(A[31:28],B[31:28],Ca,S1[31:28],C8a);
    four_bits_adder FBAo(A[31:28],B[31:28],Cb,S2[31:28],C8b);
    mux M1(C2a,C2b,C1,C2);
    mux M2(C3a,C3b,C2,C3);
    mux M3(C4a,C4b,C3,C4);
    mux M4(C5a,C5b,C4,C5);
    mux M5(C6a,C6b,C5,C6);
    mux M6(C7a,C7b,C6,C7);
    mux M7(C8a,C8b,C7,C_out);
    mux Ma1(S1[4],S2[4],C1,S[4]); mux Mb1(S1[5],S2[5],C1,S[5]); mux Mc1(S1[6],S2[6],C1,S[6]); mux Md1(S1[7],S2[7],C1,S[7]);
    mux Ma2(S1[8],S2[8],C2,S[8]); mux Mb2(S1[9],S2[9],C2,S[9]); mux Mc2(S1[10],S2[10],C2,S[10]); mux Md2(S1[11],S2[11],C2,S[11]);
    mux Ma3(S1[12],S2[12],C3,S[12]); mux Mb3(S1[13],S2[13],C3,S[13]); mux Mc3(S1[14],S2[14],C3,S[14]); mux Md3(S1[15],S2[15],C3,S[15]);
    mux Ma4(S1[16],S2[16],C4,S[16]); mux Mb4(S1[17],S2[17],C4,S[17]); mux Mc4(S1[18],S2[18],C4,S[18]); mux Md4(S1[19],S2[19],C4,S[19]);
    mux Ma5(S1[20],S2[20],C5,S[20]); mux Mb5(S1[21],S2[21],C5,S[21]); mux Mc5(S1[22],S2[22],C5,S[22]); mux Md5(S1[23],S2[23],C5,S[23]);
    mux Ma6(S1[24],S2[24],C6,S[24]); mux Mb6(S1[25],S2[25],C6,S[25]); mux Mc6(S1[26],S2[26],C6,S[26]); mux Md6(S1[27],S2[27],C6,S[27]);
    mux Ma7(S1[28],S2[28],C7,S[28]); mux Mb7(S1[29],S2[29],C7,S[29]); mux Mc7(S1[30],S2[30],C7,S[30]); mux Md7(S1[31],S2[31],C7,S[31]);
endmodule

