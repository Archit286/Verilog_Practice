`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 15:32:31
// Design Name: 
// Module Name: tb
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


module tb();
    
    reg clk, rst, din;
    wire dout;
    
    initial begin
        rst = 0;
        din = 0;
        clk = 0;
    end
    
    pattern dut (clk, rst, din, dout);
    
    always #5 clk = ~clk;
    
    initial begin
        rst = 0;
        #10
        rst = 1;
        #10
        rst = 0;
    end
    
    initial begin
        #30
        din = 0;
        #10
        din = 1;
        #10
        din = 0;
        #10
        din = 1;
        #10
        din = 1;
        #10
        din = 0;
        #10
        din = 1;
        #10
        din = 1;
        #10
        din = 0;
        #10
        din = 1;
        #10
        din = 0;
        #20
        $finish;
    end
    
endmodule
