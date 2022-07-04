`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2022 19:35:53
// Design Name: 
// Module Name: mls_counter
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


module mls_counter(A,reset,clk,O);
input [1:8] A;
input reset,clk;
output O;
reg [1:8] X;
wire V;

always @(posedge reset)
begin
    X[1]<=A[1];
    X[2]<=A[2];
    X[3]<=A[3];
    X[4]<=A[4];
    X[5]<=A[5];
    X[6]<=A[6];
    X[7]<=A[7];
    X[8]<=A[8];
end

always @(posedge clk)
begin
    X[1]<=V;
    X[2]<=X[1];
    X[3]<=X[2];
    X[4]<=X[3];
    X[5]<=X[4];
    X[6]<=X[5];
    X[7]<=X[6];
    X[8]<=X[7];
end

assign V=X[8]^X[6]^X[5]^X[4];
assign O=X[8];
endmodule
