`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 19:26:39
// Design Name: 
// Module Name: Two_Player_Buzzer
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

module Two_Player_Buzzer(a,b,control,A,B);
input a,b,control;
output A,B;
wire p,q;

assign p = control ? a : 'bz;
assign q = control ? b : 'bz;
assign A= ~q ? p : 'bz;
assign B= ~p ? q : 'bz;

endmodule
