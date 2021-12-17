`timescale 1ns / 1ps

module tb();

reg clk, rst, load;
reg [3:0] loadin;
wire [3:0] dout;

initial begin
clk = 0;
rst = 0;
load = 0;
loadin = 4'b1010;
end

top dut (clk,rst,load,loadin,dout);

always #20 clk = ~clk;

initial begin
rst = 0;
#30;
rst = 1;
#50;
rst = 0;
end

initial begin
load = 0;
#300;
load = 1;
#100;
load = 0;
end

initial begin
#1000;
$finish;
end

endmodule
