module comb_behavior(output reg Y,input A,B,C,D);
reg w1,w2,w3,w4;
always @(*) begin
  w1 = ~D;
  w2 = A | D;
  w3 = B & C & w1;
  w4 = ~w2;
  Y = w4 & w3;
end
endmodule