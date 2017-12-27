`timescale 1ns/1ns
`include "mealy.v"
`include "moore.v"
module top;
wire flag;
reg din,clk,rst;
//mealy m1(.flag(flag),.din(din),.clk(clk),.rst(rst));
moore m2(.flag(flag),.din(din),.clk(clk),.rst(rst));
integer i;
reg [15:0] data = 16'b0100_0110_0101_0101;

initial begin
  clk = 0;
  forever #10 clk = ~clk;
end

initial begin
  rst = 1;
  #20 rst = 0;
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