`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 12:41:48
// Design Name: 
// Module Name: test_bcd_adder
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


module test_bcd_adder;
reg  [3:0]A, B;
wire [3:0] S;
wire  C;

BCD_adder_unit F1(A, B, S, C);

initial
begin
    A[3:0] = 4'b0000; B = 4'b0000;
    #100 A[3:0] = 4'b1001; B = 4'b1001;
    #100 A[3:0] = 4'b1000; B = 4'b0010;
    #100 A[3:0] = 4'b0100; B = 4'b0011;
end
initial #400 $finish;
endmodule
