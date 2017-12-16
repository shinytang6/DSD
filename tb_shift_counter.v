`timescale 1ns/1ns
`include "shift_counter.v"
module tb_shift_counter;
wire [7:0] count;
reg clk,reset;
integer k;
shift_counter s0(.count(count),.clk(clk),.reset(reset));

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  reset = 1;
  #20 reset = 0;
end



endmodule