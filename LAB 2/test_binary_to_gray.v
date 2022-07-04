`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2022 14:30:13
// Design Name: 
// Module Name: test_binary_to_gray
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


module test_binary_to_gray;
reg [4:1]B;     
wire [4:1]G;
binary_to_gray G1(B,G);

initial
begin
B = 4'b0000; 
#10 B = 4'b0001; 
#10 B = 4'b0010; 
#10 B = 4'b0011; 
#10 B = 4'b0100; 
#10 B = 4'b0101; 
#10 B = 4'b0110; 
#10 B = 4'b0111; 
#10 B = 4'b1000;  
#10 B = 4'b1001; 
#10 B = 4'b1010; 
#10 B = 4'b1011;  
#10 B = 4'b1100; 
#10 B = 4'b1101; 
#10 B = 4'b1110;  
#10 B = 4'b1111; 
end

initial #160 $finish;
endmodule
