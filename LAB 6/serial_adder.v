`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2022 18:14:40
// Design Name: 
// Module Name: serial_adder
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


module serial_adder(A,B,clk,load,SR1,SR2);
input [7:0]A,B;
input clk,load;
output reg [7:0]SR1,SR2;
wire S,Carry;
reg C=0;
wire [7:0]D,E;

assign D[7]=load?A[7]:SR1[7];
assign D[6]=load?A[6]:SR1[6];
assign D[5]=load?A[5]:SR1[5];
assign D[4]=load?A[4]:SR1[4];
assign D[3]=load?A[3]:SR1[3];
assign D[2]=load?A[2]:SR1[2];
assign D[1]=load?A[1]:SR1[1];
assign D[0]=load?A[0]:SR1[0];

assign E[7]=load?B[7]:SR2[7];
assign E[6]=load?B[6]:SR2[6];
assign E[5]=load?B[5]:SR2[5];
assign E[4]=load?B[4]:SR2[4];
assign E[3]=load?B[3]:SR2[3];
assign E[2]=load?B[2]:SR2[2];
assign E[1]=load?B[1]:SR2[1];
assign E[0]=load?B[0]:SR2[0];

always @(posedge clk)
begin
if(load)
    SR1[0]=D[0];
    SR1[1]=D[1];
    SR1[2]=D[2];
    SR1[3]=D[3];
    SR1[4]=D[4];
    SR1[5]=D[5];
    SR1[6]=D[6];
    SR1[7]=D[7];
    
    SR2[0]=E[0];
    SR2[1]=E[1];
    SR2[2]=E[2];
    SR2[3]=E[3];
    SR2[4]=E[4];
    SR2[5]=E[5];
    SR2[6]=E[6];
    SR2[7]=E[7];
end

assign S=SR1[0]^SR2[0]^C;
assign Carry=(SR1[0]&SR2[0])|(SR2[0]&C)|(C&SR1[0]);

always @(posedge clk)
begin
    if(load==1'b0)
    begin
        if(Carry==1'bx)
            C=0;
        else
            C=Carry;
        SR1[0]=SR1[1];
        SR1[1]=SR1[2];
        SR1[2]=SR1[3];
        SR1[3]=SR1[4];
        SR1[4]=SR1[5];
        SR1[5]=SR1[6];
        SR1[6]=SR1[7];
        SR1[7]=S;
        SR2[0]=SR2[1];
        SR2[1]=SR2[2];
        SR2[2]=SR2[3];
        SR2[3]=SR2[4];
        SR2[4]=SR2[5];
        SR2[5]=SR2[6];
        SR2[6]=SR2[7];
        SR2[7]=S;
    end
    else
        C=0;
end
endmodule
