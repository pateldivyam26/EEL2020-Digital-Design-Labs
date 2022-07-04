`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2022 14:34:43
// Design Name: 
// Module Name: test_gray_to_binary
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


module test_gray_to_binary;
reg [4:1]G;     
wire [4:1]B;
gray_to_binary B1(G,B);

initial
begin
G = 4'b0000; 
#10 G = 4'b0001; 
#10 G = 4'b0011; 
#10 G = 4'b0010; 
#10 G = 4'b0110; 
#10 G = 4'b0111; 
#10 G = 4'b0101; 
#10 G = 4'b0100; 
#10 G = 4'b1100;  
#10 G = 4'b1101; 
#10 G = 4'b1111; 
#10 G = 4'b1110; 
#10 G = 4'b1010;
#10 G = 4'b1011;
#10 G = 4'b1001;
#10 G = 4'b1000;
end

initial #160 $finish;
endmodule
