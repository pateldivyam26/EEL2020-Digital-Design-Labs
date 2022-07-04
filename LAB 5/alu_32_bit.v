`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 14:05:35
// Design Name: 
// Module Name: alu_32_bit
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


module alu_32_bit(S, A, B, Y);
input[2:0] S;
input[31:0] A;
input[31:0] B;
output reg[31:0] Y;
always@(S)
    case(S)
        3'b000: Y = 0; //Clear
        3'b001: Y = A+B; //Addition
        3'b010: Y = A-B; //Subtraction
        3'b011: Y = A<<1; //Left Shift
        3'b100: Y = A>>1; //Right Shift
        3'b101: Y = A&B; //AND
        3'b110: Y = A|B; //OR
        3'b111: Y = A^B; //XOR
    endcase
endmodule
