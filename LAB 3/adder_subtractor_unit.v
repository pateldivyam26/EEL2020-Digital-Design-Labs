`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2022 13:26:00
// Design Name: 
// Module Name: adder_subtractor_unit
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

module half_adder(A,B,Sum,Carry);
    input A, B;
    output Sum, Carry;
    assign Sum = A ^ B;
    assign Carry = A & B;
endmodule

module full_adder(A,B,C,Sum,Carry);
    input A,B,C;
    output Sum, Carry;
    wire Sum1, Carry1, Carry2;
    half_adder H1(A,B,Sum1,Carry1);
    half_adder H2(Sum1,C,Sum,Carry2);
    assign Carry = Carry1|Carry2;
endmodule

module adder_subtractor_unit(A,b,S,C0,Carry,V);
    input [3:0]A,b;
    input C0;
    output [3:0]S;
    output Carry,V;
    wire C1,C2,C3;
    wire [3:0]B;
    assign B[0]=b[0]^C0;
    assign B[1]=b[1]^C0;
    assign B[2]=b[2]^C0;
    assign B[3]=b[3]^C0;
    
    full_adder FA1(A[0],B[0],C0,S[0],C1);
    full_adder FA2(A[1],B[1],C1,S[1],C2);
    full_adder FA3(A[2],B[2],C2,S[2],C3);
    full_adder FA4(A[3],B[3],C3,S[3],Carry);
    assign V = Carry^C3;
endmodule
