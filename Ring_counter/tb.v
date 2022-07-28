`timescale 1ns / 1ps

module tb();

reg clk, start;
wire [3:0] dout;

initial begin
clk = 0;
start = 1;
end

counter dut (clk, start, dout);

always #20 clk = ~clk;

initial begin
start = 1;
#50;
start = 0;
end

initial begin
#500;
$finish;
end

endmodule
