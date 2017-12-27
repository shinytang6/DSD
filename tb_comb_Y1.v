`timescale 1ns/1ns
`include "comb_Y1.v"
module tb_comb_Y1;
reg [2:0] data;
wire Y;
integer k;
comb_Y1 y1(.Y(Y),.A(data[2]),.B(data[1]),.C(data[0]));

initial begin
  data = 3'b0;
  for (k=0; k<8; k=k+1) begin
    #5;
    data = data + 1'b1;
  end
end

initial
  $monitor("At time %t, Y=%b, A=%b,B=%b,C=%b",$time,Y,data[2],data[1],data[0]);
endmodule