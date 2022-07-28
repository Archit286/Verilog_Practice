`timescale 1ns / 1ps

module mux(
    input a,b,c,d,
    input [1:0] sel,
    output reg y, ybar
    );
     
always@(*)
begin
if(sel == 2'b00)
begin
y = a;
ybar = ~a;
end
else if (sel == 2'b01)
begin
y = b;
ybar = ~b;
end
else if(sel == 2'b10)
begin
y = c;
ybar = ~c;
end
else
begin
y = d;
ybar = ~d;
end
end

endmodule
