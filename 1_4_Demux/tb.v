`timescale 1ns / 1ps

module tb();

reg din, en;
reg [1:0] sel;
wire [3:0] dout;

initial begin
en = 1;
din = 1;
end

top dut (din, en, sel, dout);

initial begin
sel = 2'b00;
#100;
sel = 2'b01;
#100;
sel = 2'b10;
#100;
sel = 2'b11;
end

initial begin
#400;
$finish;
end
endmodule
