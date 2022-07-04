`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 15:26:57
// Design Name: 
// Module Name: test_priority_encoder_casex
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


module test_priority_encoder_casex();
reg [3:0] D;
wire [1:0] A;
wire V; 

priority_encoder PEC(A, D, V);
initial 
begin
    D = 0;        
    #100 D = 4'b0000;
    #100 D = 4'b0001;
    #100 D = 4'b0010;
    #100 D = 4'b0100;
    #100 D = 4'b1000;
end 
initial #600 $finish;    
endmodule
