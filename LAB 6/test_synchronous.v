`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 23:36:52
// Design Name: 
// Module Name: test_synchronous
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


module test_synchronous();
reg D,clock,reset;
wire Q,Qbar;
Synchronous_D SD(Q,Qbar,D,clock,reset);
initial
begin
clock = 0;
end
always
#100 clock=~clock;
initial #800 $finish;
initial
begin
clock = 1'b0; D = 1'b0; reset = 1'b0;
#100 D = 1'b0; reset = 1'b0;
#100 D = 1'b0; reset = 1'b1;
#100 D = 1'b0; reset = 1'b1;
#100 D = 1'b1; reset = 1'b0;
#100 D = 1'b1; reset = 1'b0;
#100 D = 1'b1; reset = 1'b1;
#100 D = 1'b1; reset = 1'b1;
end
initial #800 $finish;
endmodule
