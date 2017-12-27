module mealy(output reg flag,input din,clk,rst);
parameter A=8'b0000_0001,B=8'b0000_0010,C=8'b0000_0100,D=8'b0000_1000,
E=8'b0001_0000,F=8'b0010_0000,G=8'b0100_0000,H=8'b1000_0000;
reg [7:0] state;
always @(posedge clk or posedge rst) begin
  if(rst) begin flag<=0;state<=A; end
  else begin
    case(state)
      A: if(din) begin
	   state <= A;
	   flag <= 0;
         end
	 else begin
	   state <= B;
	   flag <= 0;
         end
      B: if(din) begin
	   state <= C;
	   flag <= 0;
         end
	 else begin
	   state <= B;
	   flag <= 0;
         end
      C: if(din) begin
	   state <= A;
	   flag <= 0;
         end
	 else begin
	   state <= D;
	   flag <= 0;
         end
      D: if(din) begin
	   state <= E;
	   flag <= 0;
         end
	 else begin
	   state <= B;
	   flag <= 0;
         end
      E: if(din) begin
	   state <= A;
	   flag <= 0;
         end
	 else begin
	   state <= F;
	   flag <= 0;
         end
      F: if(din) begin
	   state <= G;
	   flag <= 0;
         end
	 else begin
	   state <= B;
	   flag <= 0;
         end
      G: if(din) begin
	   state <= A;
	   flag <= 0;
         end
	 else begin
	   state <= H;
	   flag <= 0;
         end
      H: if(din) begin
	   state <= G;
	   flag <= 1;
         end
	 else begin
	   state <= B;
	   flag <= 0;
         end
     endcase
  end

end
endmodule