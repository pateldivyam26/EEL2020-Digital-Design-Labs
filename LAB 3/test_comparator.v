`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2022 22:07:02
// Design Name: 
// Module Name: test_comparator
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


module test_comparator;
reg [3:0]A,B;
reg C0;
wire A_equal_B,A_less_B,A_greater_B;

comparator C1(A,B,C0,A_equal_B,A_less_B,A_greater_B);
initial 
begin
    A = 4'b0000; B = 4'b0000; C0=1'b1; 
    #10 A = 4'b0001; B = 4'b0010; C0=1'b1; 
    #10 A = 4'b0011; B = 4'b0101; C0=1'b1;
    #10 A = 4'b0101; B = 4'b0111; C0=1'b1;
    #10 A = 4'b0110; B = 4'b0101; C0=1'b1;
    #10 A = 4'b1001; B = 4'b1010; C0=1'b1;
    #10 A = 4'b1010; B = 4'b1011; C0=1'b1;
    #10 A = 4'b1101; B = 4'b1110; C0=1'b1;
    #10 A = 4'b1110; B = 4'b1111; C0=1'b1;
    #10 A = 4'b1111; B = 4'b1111; C0=1'b1;
end
initial #100 $finish;
endmodule
