`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2022 14:30:50
// Design Name: 
// Module Name: gray_to_binary
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


module gray_to_binary(G,B);
input [4:1]G;     // gray code input
output [4:1]B;     // binary output

assign B[4] = G[4];
assign B[3] = G[4] ^ G[3];
assign B[2] = G[4] ^ G[3] ^ G[2];
assign B[1] = G[4] ^ G[3] ^ G[2] ^ G[1];

endmodule
