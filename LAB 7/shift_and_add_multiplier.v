`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2022 09:50:38
// Design Name: 
// Module Name: shift_and_add_multiplier
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
    output Sum,Carry;
    assign Sum = A^B^C;
    assign Carry = (A&B)|(B&C)|(C&A);
endmodule


module four_bit_adder(A,B,S,C);
    input [3:0] A,B;
    output [3:0] S;
    output C;
    wire [3:1] D;
    full_adder FA1(A[0],B[0],0,S[0],D[1]);
    full_adder FA2(A[1],B[1],D[1],S[1],D[2]);
    full_adder FA3(A[2],B[2],D[2],S[2],D[3]);
    full_adder FA4(A[3],B[3],D[3],S[3],C);
endmodule


module shift_and_add_multiplier(A,B,clk,ctrl,load,P,Q,M,PQ);
    input [3:0] A,B;
    input clk,ctrl,load;
    output reg [3:0] P,Q,M;
    output [7:0] PQ;
    wire [3:0] D1,D2,D3,R,S,U;
    wire V;

    assign D1[3] = load?A[3]:Q[3];
    assign D1[2] = load?A[2]:Q[2];
    assign D1[1] = load?A[1]:Q[1];
    assign D1[0] = load?A[0]:Q[0];

    assign D2[3] = load?B[3]:M[3];
    assign D2[2] = load?B[2]:M[2];
    assign D2[1] = load?B[1]:M[1];
    assign D2[0] = load?B[0]:M[0];

    assign D3[3] = load?0:V;
    assign D3[2] = load?0:U[3];
    assign D3[1] = load?0:U[2];
    assign D3[0] = load?0:U[1];

    always @(posedge clk)
    begin
        Q[0] = D1[0];
        Q[1] = D1[1];
        Q[2] = D1[2];
        Q[3] = D1[3];
    
        M[0] = D2[0];
        M[1] = D2[1];
        M[2] = D2[2];
        M[3] = D2[3];
    end

    assign R[3] = M[3]&Q[0];
    assign R[2] = M[2]&Q[0];
    assign R[1] = M[1]&Q[0];
    assign R[0] = M[0]&Q[0];

    four_bit_adder FBA(R,P,U,V);

    always @(posedge clk)
    begin
        if(ctrl)
        begin
            Q[0] = Q[1];
            Q[1] = Q[2];
            Q[2] = Q[3];
            Q[3] = U[0];
        end
    
        P[0] = D3[0];
        P[1] = D3[1];
        P[2] = D3[2];
        P[3] = D3[3];
    end

    assign PQ[0] = Q[0];
    assign PQ[1] = Q[1];
    assign PQ[2] = Q[2];
    assign PQ[3] = Q[3];
    assign PQ[4] = P[0];
    assign PQ[5] = P[1];
    assign PQ[6] = P[2];
    assign PQ[7] = P[3];
endmodule