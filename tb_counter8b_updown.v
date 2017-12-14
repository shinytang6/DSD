`timescale 1ns/1ns
`include "counter8b_updown.v"
module tb_counter8b_updown;
wire [7:0] count;
reg clk,reset,dir;
counter8b_updown c0(.count(count),.clk(clk),.reset(reset),.dir(dir));

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  reset = 1;
  #20 reset = 0;
end

initial begin
  dir = 1;
  #100 dir = 0;
end
endmodule