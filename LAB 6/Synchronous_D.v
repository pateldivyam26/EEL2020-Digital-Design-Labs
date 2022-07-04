`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2022 23:34:44
// Design Name: 
// Module Name: Synchronous_D
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


module Synchronous_D(Q,Qbar,D,clock,reset);
    input D,clock,reset;
    output reg Q;
    output Qbar;
    assign Qbar = ~Q;
    always @(posedge clock)
    begin
    if(reset)
        Q<=0;
    else
        Q<=D;
    end
endmodule
