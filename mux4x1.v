`include "mux2x1.v"
module mux4x1(output dout,input [1:0] sel,input [3:0] din);
wire d1,d2;
mux2x1 i1(.dout(d1), .sel(sel[0]), .din(din[1:0]));
mux2x1 i2(.dout(d2), .sel(sel[0]), .din(din[3:2]));
mux2x1 i3(.dout(dout), .sel(sel[1]), .din({d2,d1}));
endmodule