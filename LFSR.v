module LFSR(output reg [1:26] q,
            input clk,
            input rst_n,
            input load,
            input [1:26] din
            );
always @(posedge clk) begin
  if(~rst_n)
    q <= 26'b0;
  else begin
    if(load) 
      q <= (|din) ? din : 26'b01;
    else begin
      if(q == 26'b0)
        q <= 26'b01;
      else begin
	q[26] <= q[25];
	q[9:25] <= q[8:24];
	q[8] <= q[26] ^ q[7];
	q[7] <= q[26] ^ q[6];
	q[2:6] <= q[1:5];
	q[1] <= q[26];
      end
   end
  end
end
endmodule