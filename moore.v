module moore(output reg flag,input din,clk,rst);
parameter A=9'b00000_0001,B=9'b00000_0010,C=9'b00000_0100,D=9'b00000_1000,
E=9'b00001_0000,F=9'b00010_0000,G=9'b00100_0000,H=9'b01000_0000,I=9'b10000_0000;
reg [8:0] state;
always @(posedge clk or posedge rst) begin
  if(rst) begin flag<=0;state<=A; end
  else begin
    case(state)
      A: begin
	   state <= din ? A : B;
	   flag <= 0;
         end
      B: begin
	   state <= din ? C : B;
	   flag <= 0;
         end
      C: begin
	   state <= din ? A : D;
	   flag <= 0;
         end
      D: begin
	   state <= din ? E : B;
	   flag <= 0;
         end
      E: begin
	   state <= din ? A : F;
	   flag <= 0;
         end
      F: begin
	   state <= din ? G : B;
	   flag <= 0;
         end
      G: begin
	   state <= din ? A : H;
	   flag <= 0;
         end
      H: begin
	   state <= din ? I : B;
	   flag <= 0;
         end
      I: begin
	   flag <= 1;
	   state <= din ? A : B;
	 end
     endcase
  end

end
endmodule