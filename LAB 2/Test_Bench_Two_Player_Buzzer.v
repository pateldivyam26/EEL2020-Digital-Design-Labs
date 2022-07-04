`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 19:29:16
// Design Name: 
// Module Name: Test_Bench_Two_Player_Buzzer
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


module Test_Bench_Two_Player_Buzzer;

wire A,B;
reg a,b,control;

Two_Player_Buzzer G(a,b,control,A,B);
initial
begin

a = 1'b0; b = 1'b0; control = 1'b0;
#10;
a = 1'b0; b = 1'b0; control = 1'b1;
#10;
a = 1'b0; b = 1'b1; control = 1'b0;
#10;
a = 1'b1; b = 1'b0; control = 1'b0;
#10;
a = 1'b0; b = 1'b1; control = 1'b1;
#10;
a = 1'b1; b = 1'b0; control = 1'b1;
#10;
a = 1'b1; b = 1'b1; control = 1'b1;
#10;
end
initial #80 $finish;
endmodule
