`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 15:12:31
// Design Name: 
// Module Name: pattern
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


module pattern(
    input clk, rst, din,
    output reg dout
    );
    
    parameter s0 = 0;
    parameter s1 = 1;
    parameter s2 = 2;
    parameter s3 = 3;
    
    reg [1:0] ps, ns;
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
            ps <= s0;
        else
            ps <= ns;    
    end
    
    always@(ps,din)
    begin
        case(ps)
           s0:begin
               dout = din? 0:0;
               ns = din? s1:s0;
           end
           s1:begin
               dout = din? 0:0;
               ns = din? s2:s1;
           end
           s2:begin
               dout = din? 0:0;
               ns = din? s3:s0;
           end
           s3:begin
               dout = din? 1:0;
               ns = din? s2:s1;
           end
        endcase       
    end
    
    
endmodule
