`timescale 1ns/1ns
`include "mux4x1.v"
module tb_mux4x1;
wire tb_dout;
reg [1:0] tb_s;
reg [3:0] tb_din;
integer k,i;
mux4x1 u1(.dout(tb_dout),.din(tb_din),.sel(tb_s));

initial begin
  tb_s = 2'b00;
  #90 tb_s = 2'b01;
  #90 tb_s = 2'b10;
  #90 tb_s = 2'b11;
end

initial begin
  for(i=0;i<4;i=i+1) begin
    tb_din = 4'b0000;
    #5;
    for(k=0; k<16; k=k+1) begin
      tb_din = tb_din + 1;
      #5;
    end
    tb_din = 4'bx;
    #5;
  end
end

initial
   $monitor("At time %t, dout=%b, sel=%b",$time,tb_dout,tb_s);
endmodule