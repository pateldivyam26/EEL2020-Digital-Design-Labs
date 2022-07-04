`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2022 15:08:16
// Design Name: 
// Module Name: bcd_subtractor
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


module bcd_subtractor(A,B,s,cout);
    input [3:0] A,B;
    output reg[3:0] s;
    output reg cout;
    
    always @(A,B)
    begin 
        if (A>B)
            begin
                s = A - B;
                cout = 0;
            end
        else if (A<B)
            begin
                s = B - A;
                cout = 1;
            end 
        else
            begin
                s = 0;
                cout = 0;
            end
    end
endmodule