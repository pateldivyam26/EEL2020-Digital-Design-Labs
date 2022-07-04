`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2022 13:56:12
// Design Name: 
// Module Name: comparator
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

module comparator(A,B,C0,A_equal_B,A_less_B,A_greater_B);
    input [3:0]A,B;
    input C0;
    wire [3:0]S;
    wire V,Carry;
    output A_equal_B,A_less_B,A_greater_B;
    wire output_1;
    adder_subtractor_unit AS2(A,B,S,C0,Carry,V);
    assign A_equal_B = ~(S[0] | S[1] | S[2] | S[3]);
    assign A_greater_B = S[3]~^V;
    assign A_less_B = S[3]^V;

endmodule
