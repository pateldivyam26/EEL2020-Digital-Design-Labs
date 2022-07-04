`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2022 19:38:48
// Design Name: 
// Module Name: melay
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


module melay(X,load,ctrl,clk,Y);
input [3:0]X;
input load,ctrl,clk;
output reg [3:0] Y;
wire D,V;
reg A=0;

always @(posedge clk)
begin
    if(load)
    begin
        Y[0]=X[0];
        Y[1]=X[1];
        Y[2]=X[2];
        Y[3]=X[3];
    end
    if(ctrl)
    begin
        A<=D;
        Y[0]<=Y[1];
        Y[1]<=Y[2];
        Y[2]<=Y[3];
        Y[3]<=V;
    end
end

assign D= A | Y[0];
assign V= Y[0]^A;
endmodule
