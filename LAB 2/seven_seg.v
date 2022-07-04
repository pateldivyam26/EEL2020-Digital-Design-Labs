`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2022 14:37:53
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(hex,led);
input [3:0] hex;
output [6:0] led;
reg [6:0] led;
always @(hex)
    begin
        case (hex) 
            0 : led = 7'b1111110;
            1 : led = 7'b0110000;
            2 : led = 7'b1101101;
            3 : led = 7'b1111001;
            4 : led = 7'b0110011;
            5 : led = 7'b1011011;
            6 : led = 7'b1011111;
            7 : led = 7'b1110000;
            8 : led = 7'b1111111;
            9 : led = 7'b1111011;
            10 : led = 7'b1110111;
            11 : led = 7'b0011111;
            12 : led = 7'b1001110;
            13 : led = 7'b0111101;
            14 : led = 7'b1001111;
            15 : led = 7'b1000111;            
            default : led = 7'b1111111; 
        endcase
    end
    
endmodule
