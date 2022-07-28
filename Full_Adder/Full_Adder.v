`timescale 1ns / 1ps

module Full_Adder(
    input a,b,c,
    output sum,carry
    );
    
wire t1,t2,t3,t4,t5;


xor g1 (t1,a,b);
xor g3 (sum,t1,c);
and g2 (t2,a,b);
and g4 (t3,t1,c);
or g5 (carry,t3,t2);

endmodule

module tb();

reg a,b,c;
wire sum,carry;

initial begin
a = 0;
b = 0;
c = 0;
end

Full_Adder dut (a,b,c,sum,carry);

always #5 a = ~a;
always #10 b = ~b;
always #20 c = ~c;

initial begin
#200;
$finish;
end

endmodule