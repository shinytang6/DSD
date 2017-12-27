`timescale 1ns/1ns
`include "LFSR.v"
module tb_LFSR;
  wire [1:26] q;
  reg clk,rst_n,load;
  reg [1:26] din;
  LFSR u0(.q(q),.clk(clk),.rst_n(rst_n),.load(load),.din(din));
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    rst_n = 0;  
    #8 rst_n = 1;
  end

  initial begin
    load = 0;
    din = 26'b0;
    
    #88 load = 1'b1;
    din = 26'b1100_0010_0001_0011_1100_1001_11;
    #10 load = 1'b0;

    #50 load = 1'b1;
    din = 8'b0;
    #10 load = 1'b0;
    #10 $stop;
  end 
 initial
   $monitor("time:%0000tns,",$time,"q:%b,load:%b,din:%b",q,load,din);
endmodule
