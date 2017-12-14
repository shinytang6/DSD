module ones_count(output reg [3:0] count, input [7:0] dat_in);
integer k;

always @(*) begin
    count = 4'b0;
    for(k=0; k<8; k=k+1) begin
      if(dat_in[k] == 1'b1)
	count = count + 1'b1;
    end
end

endmodule