module filter(output reg sig_out,input clock,reset,sig_in);
 reg j,k; 
 reg [3:0] q;
 always @(posedge clock or negedge reset) begin
    if(~reset) q = 4'h0;
    else q = {q[2:0],sig_in};
    j = q[3] & q[2] & q[1];
    k = ~q[3] & ~q[2] & ~q[1];
    case({j,k})
	2'b01: sig_out = 0;
	2'b10: sig_out = 1;
	2'b11: sig_out = ~q;
	default: ;
    endcase
 end
endmodule