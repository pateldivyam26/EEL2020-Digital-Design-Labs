`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2022 12:55:14
// Design Name: 
// Module Name: test_add_sub
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


module test_add_sub();
reg [3:0] A, B;
wire [3:0] s;
wire cout;


bcd_subtractor BS(A,B,s,cout);
initial 
    begin
        A = 0;  B = 0;  #100;
        A = 6;  B = 9;  #100;
        A = 5;  B = 3;  #100;
        A = 4;  B = 5;  #100;
        A = 8;  B = 2;  #100;
        A = 9;  B = 9;  #100;
    end
initial #700 $finish;
endmodule
