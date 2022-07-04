`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2022 22:10:40
// Design Name: 
// Module Name: test_blocking_assignment
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


module test_blocking_assignment();
    reg D,clock;
    wire Q1,Q2;
    blocking_assignment ba1(D,clock,Q1,Q2);
    initial 
    begin
        D=1'b0; clock=1'b0;
        #10 D=1'b1; clock=1'b0;
        #10 D=1'b1; clock=1'b1;
        #10 D=1'b0; clock=1'b1;
        #10 D=1'b0; clock=1'b0;
        #10 D=1'b0; clock=1'b1;
        #10 D=1'b0; clock=1'b0;
    end
    initial #80 $finish;
endmodule
