`timescale 1ns / 1ps

module top(
    input clk, rst, load,
    input [3:0] loadin,
    output reg [3:0] dout
    );

always@(posedge clk)
begin

if(rst)
dout <= 4'b0000;
else if(load) begin
dout <= loadin;
end
else
dout <= dout - 1;

end

endmodule
