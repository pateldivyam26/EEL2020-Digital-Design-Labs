`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 21:05:13
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


module test_bcd_adder();
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] sum;
    wire carry;

    bcd_adder BA1(A,B,sum,carry);

    initial begin
        A = 0;  B = 0;  #100;
        A = 6;  B = 9;  #100;
        A = 3;  B = 3;  #100;
        A = 4;  B = 5;  #100;
        A = 8;  B = 2;  #100;
        A = 9;  B = 9;  #100;
    end
initial #700 $finish;
endmodule
