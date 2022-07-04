`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2022 02:42:17
// Design Name: 
// Module Name: test_electronic_voting_machine
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


module test_electronic_voting_machine();
reg admin, C1, C2, reset;
wire led1, led2, led, invalid;
wire [3:0] X1, Y1, Z1, X2, Y2, Z2;

electronic_voting_machine EVM(admin, C1, C2, reset, led1, led2, led, invalid, X1, Y1, Z1, X2, Y2, Z2);

initial
begin
    admin = 0; C1 = 0; C2 = 0; reset = 0; #5 admin = 1; #1 admin = 0;
    #2 C1 = 1; #1 C1 = 0;
    #1 reset = 1; #1 reset = 0;
    #6 admin = 1; #1 admin = 0; #5 C2 = 1; #1 C2 = 0;
    #6 reset = 1; #1 reset = 0;
    #4 admin = 1; #1 admin = 0;
    #2 C1 = 1; C2 = 1; #1 C1 = 0; C2 = 0;
    #3 C1 = 1; #1 C1 = 0;
    #5 reset = 1; #1 reset = 0;
    #1 admin = 1; #1 admin = 0; #4 C1 = 1; #1 C1 = 0;
    #2 C2 = 1; #1 C2 = 0;
    #3 reset = 1; #1 reset = 0;
    #1 C1 = 1; #1 C1 = 0; #2 C2 = 1; #1 C2 = 0;
    #2 admin = 1; #1 admin = 0; #9 reset = 1; #1 reset = 0;
    #2 admin = 1; #1 admin = 0; #1 C2 = 1; #1 C2 = 0;
    #2 reset = 1; #1 reset = 0;
    #1 admin = 1; #1 admin = 0; #1 C1 = 1; #1 C1 = 0; #1 reset = 1; #1 reset = 0;
    admin = 1; #1 admin = 0; #1 C1 = 1; #1 C1 = 0; #1 reset = 1; #1 reset = 0;
    admin = 1; #1 admin = 0; #1 C1 = 1; #1 C1 = 0; #1 reset = 1; #1 reset = 0;
    admin = 1; #1 admin = 0; #1 C1 = 1; #1 C1 = 0; #1 reset = 1; #1 reset = 0;
    admin = 1; #1 admin = 0; #1 C1 = 1; #1 C1 = 0; #1 reset = 1; #1 reset = 0;
    admin = 1; #1 admin = 0; #1 C1 = 1; #1 C1 = 0; #1 reset = 1; #1 reset = 0;
    admin = 1; #1 admin = 0; #1 C1 = 1; #1 C1 = 0; #1 reset = 1; #1 reset = 0;
end
initial #130 $finish;
endmodule
