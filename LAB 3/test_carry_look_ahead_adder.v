`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2022 18:43:59
// Design Name: 
// Module Name: test_carry_look_ahead_adder
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

module test_carry_look_ahead_adder;
reg [31:0] A,B;
wire [31:0] S;
wire C;
Carry_look_ahead_adder CALD1(A,B,S,C);
initial
begin
    A = 'b10100000101000001111111111111111; B = 'b10100000101111111111111111100000;
    #100 A = 'b01011000111111111111111111110100; B = 'b11110100111101001111111111111111;
    #100 A = 'b11111111111111110000111100111101; B = 'b00001111000011111111111111111111;
    #100 A = 'b11011111111111111110100011001010; B = 'b11001111111111111111100011001010;
end
initial #300 $finish;
endmodule
