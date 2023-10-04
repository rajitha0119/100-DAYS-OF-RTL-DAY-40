`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 15:09:47
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


module serial_adder(
    input clk,
    input reset,
    input a,
    input b,
    input cin,
    output reg s,
    output reg cout,
    output reg c
    );
    reg flag;
    always@(posedge clk or posedge reset)
    begin
    if(reset==1) begin
    s=0;
    cout=c;
    flag=0;
    end else begin
    if(flag==0) begin
    c=cin;
    flag=1;
    end
    cout=0;
    s=a^b^cin;
    cout=(a&b)|(b&cin)|(cin&a);
    end
    end
    
    
endmodule
