`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 14:40:08
// Design Name: 
// Module Name: test_barrel_shifter
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


module test_barrel_shifter();
reg [1:0]S; 
reg [3:0]W;
wire [3:0]Y;

barrel_shifter BS(S, W, Y);
initial 
    begin;
        S = 2'b00; W = 4'b0110;
        #100 S = 2'b01; W = 4'b0110;
        #100 S = 2'b10; W = 4'b0110;
        #100 S = 2'b11; W = 4'b0110;
        #100 S = 2'b00; W = 4'b1011;
        #100 S = 2'b01; W = 4'b1011;
        #100 S = 2'b10; W = 4'b1011;
        #100 S = 2'b11; W = 4'b1011;
    end
initial #800 $finish;
endmodule
