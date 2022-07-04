`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 14:13:43
// Design Name: 
// Module Name: test_alu_32_bit
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


module test_alu_32_bit;
reg [2:0] S;
reg [31:0] A;
reg [31:0] B;
wire [31:0] Y;

alu_32_bit ALU(S, A, B, Y);
initial 
begin
    S = 3'b000; A = 2'b00; B = 2'b00;
    #100 S = 3'b001; A = 2'b10; B = 2'b01;
    #100 S = 3'b010; A = 2'b10; B = 2'b01;
    #100 S = 3'b011; A = 2'b10; B = 2'b01;
    #100 S = 3'b100; A = 2'b10; B = 2'b01;
    #100 S = 3'b101; A = 2'b10; B = 2'b01;
    #100 S = 3'b110; A = 2'b10; B = 2'b01;
    #100 S = 3'b111; A = 2'b10; B = 2'b01;
end
initial #800 $finish;
endmodule
