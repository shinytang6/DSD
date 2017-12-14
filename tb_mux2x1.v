`timescale 1ns/1ns
`include "mux2x1.v"
module tb_mux2x1;
wire tb_dout;
reg tb_s;
reg [1:0] tb_din;
integer k;
mux2x1 u(.dout(tb_dout),.din(tb_din),.sel(tb_s));

initial begin
  tb_s = 0;
  # 25 tb_s = 1;
end

initial begin
  for(k=0; k<2; k=k+1) begin
    tb_din = 2'b00;
    #5 tb_din = 2'b01;
    #5 tb_din = 2'b10;
    #5 tb_din = 2'b11;
    #5 tb_din = 2'bxx;
    #5;
  end
end

endmodule