`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2022 14:31:26
// Design Name: 
// Module Name: unblocking_assignment
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


module unblocking_assignment(D, clock, Q1, Q2);
input D, clock;
output reg Q1, Q2;
always@(posedge clock) 
begin
    Q1 <= D;
    Q2 <= Q1;
end
endmodule
