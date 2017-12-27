`timescale 1ns/1ns
`include "filter.v"
module tb_filter;
wire sig_out;
reg clk,reset,sig_in;
filter f(.sig_out(sig_out),.clock(clk),.reset(reset),.sig_in(sig_in));
initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  reset = 0;
  #20 reset = 1;
end

initial begin
  sig_in = 0;
  #10 sig_in = 1;
  forever #40 sig_in = ~sig_in;
  
end

initial
    begin
    $monitor("At time %t, sig_out=%b, sig_in =%b, reset=%b",$time,sig_out,sig_in,reset);
  end  
endmodule