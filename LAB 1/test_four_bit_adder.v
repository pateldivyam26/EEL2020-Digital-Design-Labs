`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2022 16:31:11
// Design Name: 
// Module Name: test_four_bit_adder
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


module test_four_bit_adder;
reg [3:0]A,B;
wire [3:0]S;
wire Carry;

four_bit_adder FBA1(A,B,S,Carry);
initial
begin
    A = 4'b0000; B = 4'b0000; 
    #10 A = 4'b0001; B = 4'b0010; 
    #10 A = 4'b0101; B = 4'b0111;
    #10 A = 4'b0110; B = 4'b1000;
    #10 A = 4'b1001; B = 4'b1010;
    #10 A = 4'b1010; B = 4'b1011;
    #10 A = 4'b1101; B = 4'b1110; 
    #10 A = 4'b1111; B = 4'b1111; 
end

initial #80 $finish;
endmodule
