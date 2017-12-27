`timescale 1ns/1ns
`include "comb_str.v"
`include "comb_dataflow.v"
`include "comb_behavior.v"
`include "comb_prim.v"
module testbench_comb();
reg A1,B1,C1,D1;
reg A2,B2,C2,D2;
reg A3,B3,C3,D3;
reg A4,B4,C4,D4;
wire Y1,Y2,Y3,Y4;
integer k;
reg [3:0] num;
comb_str u0(.Y(Y1),.A(A1),.B(B1),.C(C1),.D(D1));
comb_dataflow u1(.Y(Y2),.A(A2),.B(B2),.C(C2),.D(D2));
comb_behavior u2(.Y(Y3),.A(A3),.B(B3),.C(C3),.D(D3));
comb_prim u3(.Y(Y4),.A(A4),.B(B4),.C(C4),.D(D4));
initial begin
  num = 4'b0000;
  for(k=0; k<16; k=k+1) begin
    {A1,B1,C1,D1} = num;
    {A2,B2,C2,D2} = num;
    {A3,B3,C3,D3} = num;
    {A4,B4,C4,D4} = num;
    num = num + 1;
    #5;
  end
end


initial begin
  $monitor("At time %t, Y1=%b, A1 =%b, B1=%b, C1=%b, D1=%b",$time,Y1,A1,B1,C1,D1);
  $monitor("At time %t, Y2=%b, A2 =%b, B2=%b, C2=%b, D2=%b",$time,Y2,A2,B2,C2,D2);
  $monitor("At time %t, Y3=%b, A3 =%b, B3=%b, C3=%b, D3=%b",$time,Y1,A3,B3,C3,D3);
  $monitor("At time %t, Y4=%b, A4 =%b, B4=%b, C4=%b, D4=%b",$time,Y1,A4,B4,C4,D4);
end
endmodule
