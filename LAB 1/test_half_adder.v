`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2022 15:49:33
// Design Name: 
// Module Name: test_half_adder
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


module test_half_adder;
wire Sum,Carry;
reg A,B;
half_adder H1(A,B,Sum,Carry);

initial
begin
    A = 1'b0; B = 1'b0;
    #10 A = 1'b1;
    #10 B = 1'b1; A = 1'b0;
    #10 A = 1'b1;
end

initial #50 $finish;

endmodule
