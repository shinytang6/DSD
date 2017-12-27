`timescale 1ns/1ns
`include "seq_detect.v"
`include "seq_detect_2.v"
module tb_seq_detect;
wire flag;
reg din,clk,rst_n;
seq_detect s1(.flag(flag),.din(din),.clk(clk),.rst_n(rst_n));
seq_detect_2 s2(.flag(flag),.din(din),.clk(clk),.rst_n(rst_n));

integer i;
reg [15:0] data = 15'b0001_1101_0100_0110;

initial begin
  clk = 0;
  forever #10 clk = ~clk;
end

initial begin
  rst_n = 0;
  #20 rst_n = 1;
end

initial begin
  din = 0;
  #20;
  for(i=0; i<16;i=i+1) begin
     din = data[15];
     data = data<<1;
     #20;
  end
end


endmodule
