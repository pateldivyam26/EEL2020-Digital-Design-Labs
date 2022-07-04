`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2022 16:05:59
// Design Name: 
// Module Name: test_multiply_5
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


module test_multiply_5();
reg [3:0]I;
wire [5:0] O;
multiply_5 M1(I, O);
initial 
    begin
        I = 4'b0010;  #100;
        I = 4'b1000;  #100;
        I = 4'b1100;  #100;
        I = 4'b0111;  #100;
        I = 4'b1011;  #100;
        I = 4'b1100;  #100;
    end
initial #700 $finish;   
endmodule
