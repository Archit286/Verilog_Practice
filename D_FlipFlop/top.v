`timescale 1ns / 1ps

module top(
    input clk,rst,din,
    output reg dout, doutbar
    );
    
always@(posedge clk or posedge rst) begin

if(rst == 1)
begin
dout <= 0;
doutbar <= 1;
end
else
begin
dout <= din;
doutbar <= ~din;
end

end
endmodule
