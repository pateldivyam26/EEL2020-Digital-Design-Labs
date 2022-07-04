`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2022 21:51:31
// Design Name: 
// Module Name: test_adder_subtractor
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


module test_adder_subtractor;
reg [3:0]A,B;
reg C0;
wire [3:0]S;
wire Carry,V;

adder_subtractor_unit AS1(A,B,S,C0,Carry,V);
initial 
begin
    A = 4'b0000; B = 4'b0000; C0=1'b0; 
    #10 A = 4'b0001; B = 4'b0010; C0=1'b0; 
    #10 A = 4'b0011; B = 4'b0101; C0=1'b0;
    #10 A = 4'b0101; B = 4'b0111; C0=1'b0;
    #10 A = 4'b0110; B = 4'b1000; C0=1'b0;
    #10 A = 4'b1001; B = 4'b1010; C0=1'b0;
    #10 A = 4'b1010; B = 4'b1011; C0=1'b0;
    #10 A = 4'b1101; B = 4'b1110; C0=1'b0;
    #10 A = 4'b1110; B = 4'b1111; C0=1'b0;
    #10 A = 4'b1111; B = 4'b1111; C0=1'b0;
end

initial #100 $finish;
endmodule
