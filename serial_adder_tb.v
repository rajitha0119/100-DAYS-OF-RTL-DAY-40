`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 15:24:18
// Design Name: 
// Module Name: serial_adder_tb
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


module serial_adder_tb(

    );
    reg clk;
    reg reset;
    reg a;
    reg b;
    reg cin;
    wire s;
    wire cout;
    
    serial_adder uut(clk,reset,a,b,cin,s,cout);
    
    always
    #5 clk=~clk;
    initial begin
    clk=1;
    reset=0;
    a=0;
    b=0;
    cin=0;
    reset=1;
    #20;
    reset=0;
    //add two numbers of 4 bits 
    a=1;b=1;cin=1;#10;
    a=1;b=0;cin=0;#10;
    a=1;b=1;cin=0;#10;
    a=1;b=1;cin=0;#10;
    reset=1;
    #10;
    end
endmodule
