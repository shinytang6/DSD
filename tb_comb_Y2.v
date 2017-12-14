`timescale 1ns/1ns
`include "comb_Y2.v"
module tb_comb_Y2;
reg [3:0] data;
wire Y;
integer k;
comb_Y2 y2(.Y(Y),.A(data[3]),.B(data[2]),.C(data[1]),.D(data[0]));
initial begin
  data = 4'b0;
  for (k=0; k<16; k=k+1) begin
    #5;
    data = data + 1'b1;
  end
end


endmodule