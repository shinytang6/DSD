`timescale 1ns/1ns
`include "sram.v"
module tb_sram;
wire [7:0] dout;
reg [7:0] din,addr;
reg wr,rd,cs;

sram s1(.dout(dout),.din(din),.addr(addr),.wr(wr),.rd(rd),.cs(cs));
initial begin
  cs = 0;
  forever #30 cs = ~cs;
end
initial begin
  wr = 0;
  forever #10 wr = ~wr;
end
initial begin
  rd = 0;
  forever #20 rd = ~rd;
end
initial begin
  din = 8'b0;
  forever #10 din = din + 1;
end

initial begin
  addr = 8'b0;
  forever #20 addr = addr + 1;
end
endmodule