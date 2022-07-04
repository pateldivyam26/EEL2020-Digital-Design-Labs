`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2022 19:36:51
// Design Name: 
// Module Name: test_mls_counter
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


module test_mls();
reg [1:8] A;
reg reset,clk;
wire O;
mls_counter MLS(A,reset,clk,O);

initial
begin
    A=8'b10101011; reset=0; clk=0;
    #5 reset=1; #1 reset=0; #4 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
end
initial #400 $finish;
endmodule

