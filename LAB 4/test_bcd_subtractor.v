`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 17:44:43
// Design Name: 
// Module Name: test_bcd_subtractor
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


module test_bcd_subtractor;
reg  [3:0]A, B;
wire [3:0] S;
wire  C;
wire carry;

bcd_subtractor_unit F1(A, B, S, carry);

initial
begin
    A[3:0] = 4'b0000; B = 4'b0000;
    #100 A[3:0] = 4'b1001; B = 4'b1001;
    #100 A[3:0] = 4'b1000; B = 4'b0010;
    #100 A[3:0] = 4'b0100; B = 4'b0011;
end
initial #400 $finish;
endmodule
