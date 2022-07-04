`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 21:03:35
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(A,B,sum,carry);
    input [3:0] A,B;
    output [3:0] sum;
    output reg carry; 
    reg [4:0] sum_temp;
    reg [3:0] sum;
        
    always @(A,B)
    begin
        sum_temp = A+B; //add all the inputs
        if(sum_temp > 9)    
            begin
                sum_temp = sum_temp+6; //add 6, if result is more than 9.
                carry = 1;  //set the carry output
                sum = sum_temp[3:0];    
            end
        else    
            begin
                carry = 0;
                sum = sum_temp[3:0];
            end
    end     
endmodule

//module addsub (a, b, c, s );
//input [3:0] a;
//input [3:0] b;
//input c;
//output reg [4:0]s;
//always@ (a,b,c)
//    begin 
//        if (c)
//          s = a - b;
//        else
//          s = a + b;
//    end
//endmodule