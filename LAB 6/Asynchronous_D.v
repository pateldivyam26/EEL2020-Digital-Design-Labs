`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 23:40:42
// Design Name: 
// Module Name: Asynchronous_D
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


module Asynchronous_D(Q,Qbar,clk,D,reset);
    input D,clk,reset;
    output reg Q;
    output Qbar;
    assign Qbar = ~Q;
    always @(posedge clk,posedge reset)
    begin
    if(reset)
        Q<=0;
    else
        Q<=D;
    end
endmodule
