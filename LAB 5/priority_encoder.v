`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 14:56:09
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(A, D, V);
input [3:0]D;
output reg [1:0]A;
output reg V;
always@(D)
    begin
    V = 1;
        casex(D)
            4'b0001:A = 2'b00;
            4'b001x:A = 2'b01;
            4'b01xx:A = 2'b10;
            4'b1xxx:A = 2'b11;
            default:begin
                        V = 0;
                        A = 2'bxx;
                    end
        endcase
    end
endmodule
