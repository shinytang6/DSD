
module comb_dataflow(output Y,input A,B,C,D);
wire w1,w2,w3,w4;
assign w1 = ~D,
       w2 = A | D,
       w3 = B & C & w1,
       w4 = ~w2,
       Y = w4 & w3;
endmodule