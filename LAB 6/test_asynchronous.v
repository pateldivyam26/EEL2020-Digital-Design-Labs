`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 23:42:04
// Design Name: 
// Module Name: test_asynchronous
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


module test_asynchronous();
reg clk,D,reset;
wire Q,Qbar;
Asynchronous_D AD(Q,Qbar,clk,D,reset);
initial
begin
clk = 1'b0; D = 1'b0; reset = 1'b0;
#100 D = 1'b0; reset = 1'b0;
#100 D = 1'b0; reset = 1'b1;
#100 D = 1'b0; reset = 1'b1;
#100 D = 1'b1; reset = 1'b0;
#100 D = 1'b1; reset = 1'b0;
#100 D = 1'b1; reset = 1'b1;
#100 D = 1'b1; reset = 1'b1;
end
always
#100 clk = ~clk;
initial #800 $finish;
endmodule
