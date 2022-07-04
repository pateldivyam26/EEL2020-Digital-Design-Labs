`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2022 15:45:33
// Design Name: 
// Module Name: fast_adders_compare
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


module fast_adders_compare();
    reg [31:0] A,B;
    wire Carry_look_ahead,Carry_skip,Carry_select;
    wire [31:0] S_look_ahead,S_skip,S_select;
    Carry_look_ahead_adder CSA1(A,B,S_look_ahead,Carry_look_ahead);
    carry_skip_adder CSAb(A,B,S_skip,Carry_skip);
    carry_select_adder CSAc(A,B,S_select,Carry_select);
initial
begin
    A = 'b10100000101000001111111111111111; B = 'b10100000101111111111111111100000;
    #100 A = 'b01011000111111111111111111110100; B = 'b11110100111101001111111111111111;
    #100 A = 'b11111111111111110000111100111101; B = 'b00001111000011111111111111111111;
    #100 A = 'b11011111111111111110100011001010; B = 'b11001111111111111111100011001010;
end
initial #300 $finish;
endmodule
