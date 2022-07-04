`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2022 14:19:33
// Design Name: 
// Module Name: binary_to_gray
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


module binary_to_gray(B,G);
input [4:1]B;     // binary input
output [4:1]G;     // gray code output

assign G[4] = B[4];
assign G[3] = B[4] ^ B[3];
assign G[2] = B[3] ^ B[2];
assign G[1] = B[2] ^ B[1];

endmodule
