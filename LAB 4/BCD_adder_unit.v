`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2022 13:21:05
// Design Name: 
// Module Name: BCD_adder_unit
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


module BCD_adder_unit(A, B, S, C);
    input [3:0] A, B;
    reg C0 = 1'b0;
    output  [3:0] S;
    output  C;

    wire C1, C2, C3, C4, C5;
    wire [3:0]X, Z;
    and (C1, Z[3], Z[2]);
    and (C2, Z[3], Z[1]);
    or  (C, C3, C1,C2);
    xor (C5, C, C);

    assign X[2] = C;
    assign X[1] = C;
    assign X[3] = C5;
    assign X[0] = C5;
    four_bit_adder F_1 (A, B, Z, C3);
    four_bit_adder F_2 (X, Z, S, C4);
endmodule
