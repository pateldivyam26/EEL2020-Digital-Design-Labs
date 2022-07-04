`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2022 17:03:42
// Design Name: 
// Module Name: test_seven_seg
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


module test_seven_seg;
reg [3:0] hex;
wire [6:0] led;
seven_seg S1(hex,led);

initial 
begin 
    hex = 0;
    #10 hex = 1;
    #10 hex = 2;
    #10 hex = 3;	
    #10 hex = 4;	
    #10 hex = 5;
    #10 hex = 6;
    #10 hex = 7;	
    #10 hex = 8;	
	#10 hex = 9;
	#10 hex = 10;
	#10 hex = 11;	
	#10 hex = 12;	
	#10 hex = 13;
	#10 hex = 14;
	#10 hex = 15;
end

initial #160 $finish;
endmodule
