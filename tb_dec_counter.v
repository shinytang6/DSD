`timescale 1ns/1ns
`include "dec_counter.v"
module tb_dec_counter;
wire [3:0] count;
reg clk,reset;
dec_counter d0(.count(count),.clk(clk),.reset(reset));

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  reset = 1;
  #20 reset = 0;
end

endmodule
