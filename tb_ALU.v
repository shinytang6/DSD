`timescale 1ns/1ns
`include "ALU.v"
module tb_ALU;
wire [7:0]sum;
wire c_out;
reg c_in;
reg [2:0]oper;
reg [7:0]a,b;
integer k;
ALU A0(.sum(sum),.c_out(c_out),.c_in(c_in),.oper(oper),.a(a),.b(b));


initial begin
  a = 8'b0;
  forever #10 a = a + 1;
end

initial begin
  b = 8'b0;
  forever #20 b = b + 1;
end

initial begin
  oper = 3'b0;
  forever #10 oper = oper + 1;
end


initial begin
  c_in = 0;
  forever #40 c_in = ~c_in;
end
endmodule