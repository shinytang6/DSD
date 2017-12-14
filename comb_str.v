module comb_str(output Y,input A,B,C,D);
wire w1,w2,w3,w4,w5;
nor u0(w1,D);
or u1(w2,A,D);
//and u2(w3,B,C);
//and u3(w4,w3,w1);
and u3(w4,B,C,w1);
nor u4(w5,w2);
and(Y,w4,w5);
endmodule