primitive comb_prim_udp(output Y,input A,B,C,D);
table
  // A B C D : Y
     0 1 1 0 : 1;
     0 0 0 0 : 0;
     0 0 1 0 : 0;
     0 1 0 0 : 0;
     1 ? ? ? : 0;
     0 ? ? 1 : 0;

endtable
endprimitive

module comb_prim(output Y,input A,B,C,D);
  comb_prim_udp(Y,A,B,C,D);
endmodule