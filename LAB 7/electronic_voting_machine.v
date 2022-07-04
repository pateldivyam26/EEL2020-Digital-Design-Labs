`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2022 23:37:56
// Design Name: 
// Module Name: electronic_voting_machine
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


module electronic_voting_machine(admin, C1, C2, reset, led1, led2, led, invalid, X1, Y1, Z1, X2, Y2, Z2);
    input admin, C1, C2, reset;
    output reg led1 = 0, led2 = 0, led = 0, invalid = 0;
    reg ctrl = 0;
    reg [7:0] CA = 0, CB = 0;
    output [3:0] X1, Y1, Z1, X2, Y2, Z2;
    always @(posedge admin)
    begin
        ctrl = 1;
        invalid = 0;
    end

    always @(posedge C1 or posedge C2)
    begin
        if(C1 & !C2 & ctrl)
        begin
            led1 = 1;
            ctrl = 0;
            led = 1;
            invalid = 0;
            CA = CA+1;
        end
    
        else if(C2 & !C1 & ctrl)
        begin
            led2 = 1;
            ctrl = 0;
            led = 1;
            invalid = 0;
            CB = CB+1;
        end
        else if((C1 & C2 & ctrl) | (!ctrl))
            invalid = 1;
    end

    assign Z1 = CA%(4'd10);
    assign Y1 = (CA%7'd100)/(4'd10);
    assign X1 = CA/(7'd100);
    assign Z2 = CB%(4'd10);
    assign Y2 = (CB%7'd100)/(4'd10);
    assign X2 = CB/(7'd100);

    always @(posedge reset)
    begin
        led1 = 0;
        led2 = 0;
        led = 0;
        invalid = 0;
        ctrl = 0;
    end
endmodule