`timescale 1ns / 1ps

module top(
    input clk, start,
    output reg [3:0] dout
    );
    
always@(posedge clk)
begin

if(start)
begin
dout <= 4'b1000;
end
else
begin
dout[3] <= dout[0];
dout[2] <= dout[3];
dout[1] <= dout[2];
dout[0] <= dout[1];
end

end

endmodule
