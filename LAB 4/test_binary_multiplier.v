`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2022 12:33:02
// Design Name: 
// Module Name: test_binary_multiplier
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


module test_binary_multiplier();
reg [2:0]A,B;
wire [3:0] tens, ones;

binary_multiplier BM1(A, B, tens, ones);
initial
begin
    A = 3'd4; B = 3'd7;
    #10 A = 3'd1; B = 3'd6;
    #10 A = 3'd7; B = 3'd2;
    #10 A = 3'd6; B = 3'd5;
    #10 A = 3'd7; B = 3'd7;
    #10 A = 3'd2; B = 3'd5;
    #10 A = 3'd6; B = 3'd4;
    #10 A = 3'd0; B = 3'd3;
    #10 A = 3'd5; B = 3'd5;
    #10 A = 3'd3; B = 3'd1;
end
initial #100 $finish;
endmodule
