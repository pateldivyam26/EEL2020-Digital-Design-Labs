`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2022 19:40:05
// Design Name: 
// Module Name: test_melay
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


module test_melay();
reg [3:0] X;
reg load,ctrl,clk;
wire [3:0] Y;
melay me(X,load,ctrl,clk,Y);

initial
begin
    X=4'b0111; load =0; ctrl=0; clk=0;
    #5 load=1;
    #5 clk=1; #5 load=0;
    #5 clk=0; #5 ctrl=1;
    #5 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1; #5 ctrl=0;
end
initial #100 $finish;
endmodule
