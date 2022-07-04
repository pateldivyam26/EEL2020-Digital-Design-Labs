`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2022 11:23:56
// Design Name: 
// Module Name: binary_multiplier
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

module binary_to_bcd (A,X,Y); 
    input [5:0] A; 
    output [3:0] X, Y; 
    wire [3:0] P, Q, U, V, W; 
    wire [2:0] M,N; 
    wire O1, O2, C1, Ca, Sa, L, D1, D2, J;
    assign U[3] = A[5] & A[4]; 
    assign U[2] = ~A[5] & A[4]; 
    assign U[1] = A[5] ^ A[4]; 
    assign U[0]=1'b0; 

    four_bit_adder FBAa (A[3:0], U, P, C1); 
    assign O1 = C1 | (P[3] & (P[2] | P[1])); 
    assign V[3] = 1'b0; 
    assign V[2] = O1; 
    assign V[1] = O1; 
    assign V[0] = 1'b0; 

    four_bit_adder FBAb (P,V,Q); 
    assign O2 = Q[3] & (Q[2] | Q[1]); 
    assign W[3] = 1'b0; 
    assign W[2] = O2; 
    assign W[1] = O2; 
    assign W[0] = 1'b0; 

    four_bit_adder FBAc(Q,W,X);
    assign N[2] = 1'b0; 
    assign N[0] = O1 ^ O2; 
    assign N[1] = O1 & O2; 
    assign M[0] = A[5] ^ A[4]; 
    assign J = A[5] & A[4]; 
    assign M[1] = J ^ A[5]; 
    assign M[2] = J & A[5]; 
    assign Y[0] = N[0] ^ M[0]; 
    assign D1 = M[0]&N[0]; 
    full_adder FAa (M[1] ,N[1], D1, Y[1], D2); 
    full_adder FAb (M[2], N[2], D2, Y[2], Y[3]); 
endmodule


module binary_multiplier(A, B, M, N);
    input [2:0]A,B;
    wire [5:0]q;
    wire [9:1]w;
    output [3:0]M, N;

    and (w[1],A[0],B[0]);
    and (w[2],A[1],B[0]);
    and (w[3],A[0],B[1]);
    and (w[4],A[2],B[0]);
    and (w[5],A[1],B[1]);
    and (w[6],A[0],B[2]);
    and (w[7],A[2],B[1]);
    and (w[8],A[1],B[2]);
    and (w[9],A[2],B[2]);
    wire [4:0]c;
    wire [3:0]s;
    assign q[0] = w[1];
    half_adder F1(w[2],w[3],q[1],c[0]);
    half_adder F2(w[4],w[5],s[0],c[1]);
    full_adder F3(s[0],w[6],c[0],q[2],c[2]);
    full_adder F4(w[7],w[8],c[1],s[1],c[3]);
    half_adder F5(s[1],c[2],q[3],c[4]);
    full_adder F6(w[9],c[4],c[3],q[4],q[5]);
    binary_to_bcd BTB(q, M, N);
endmodule