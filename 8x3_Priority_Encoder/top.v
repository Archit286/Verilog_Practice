`timescale 1ns / 1ps

module top(
    input [7:0]  a,
    output reg [2:0] y,
    output reg d
    );

always@(*) begin

casex(a)
8'b10000000: 
begin
d = 1;
y = 0;
end
8'bx1000000: 
begin
d = 1;
y = 1;
end
8'bxx100000: 
begin
d = 1;
y = 2;
end
8'bxxx10000: 
begin
d = 1;
y = 3;
end
8'bxxxx1000: 
begin
d = 1;
y = 4;
end
8'bxxxxx100: 
begin
d = 1;
y = 5;
end
8'bxxxxxx10: 
begin
d = 1;
y = 6;
end
8'bxxxxxxx1: 
begin
d = 1;
y = 7;
end
default: 
begin
d = 0;
y =0;
end
endcase

end

endmodule
