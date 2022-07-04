`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 16:26:16
// Design Name: 
// Module Name: priority_encoder_forloop
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


module priority_encoder_forloop(A, D, V);
input [3:0]D;
output reg [1:0] A;
output reg V;
integer k;
always @(D)
begin
    A = 2'bxx;
    V = 0;
    for (k = 0; k < 4; k = k+1)
        if (D[k])
        begin
            A = k;
            V = 1;
        end
end
endmodule
