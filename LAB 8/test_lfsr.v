`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2022 14:28:20
// Design Name: 
// Module Name: test_lfsr
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


module test_lfsr();
    wire out;
    reg clk;
    LFSR ls1(clk,out);
    initial 
    begin
        clk=1'b0;
    end
    always #10 clk=~clk;
    initial #200 $finish;
endmodule
