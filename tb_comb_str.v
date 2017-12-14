`timescale 1ns/1ns
`include "comb_str.v"
module tb_comb_str;
wire y;
reg sel,A,B,C,D;
integer k;
comb_str s(.y(y),.sel(sel),.A(A),.B(B),.C(C),.D(D));
initial begin
  sel = 1'b0;
  #40 sel = 1'b1;
end

initial begin
  {A,B,C,D} = 4'b0;
  for(k=0;k<16;k=k+1) begin
    #5;
    {A,B,C,D} = {A,B,C,D} + 1'b1;
  end
end
 
 endmodule
