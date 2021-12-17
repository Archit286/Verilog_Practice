`timescale 1ns / 1ps

module top(
    input din, en,
    input [1:0] sel,
    output reg [3:0] dout
    );
    
always@(*)
begin

if(en)
begin

case(sel)
2'b00:begin
dout[3] <= 0;
dout[2] <= 0;
dout[1] <= 0;
dout[0] <= din;
end
2'b01:begin
dout[3] <= 0;
dout[2] <= 0;
dout[1] <= din;
dout[0] <= 0;
end
2'b10:begin
dout[3] <= 0;
dout[2] <= din;
dout[1] <= 0;
dout[0] <= 0;
end
2'b11:begin
dout[3] <= din;
dout[2] <= 0;
dout[1] <= 0;
dout[0] <= 0;
end
default: begin
dout <= 4'b0000;
end

endcase

end

end

endmodule
