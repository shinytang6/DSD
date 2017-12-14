module counter8b_updown(output reg [7:0] count, input clk,reset,dir);
always @(posedge clk or posedge reset) begin
  if(reset) count <=  8'b0;
  else 
    if(dir) begin
      if(count < 8'b1111_1111)
         count <= count + 1;
      else 
         count <= 8'b0;
    end
    else begin
      if(count > 8'b0000_0000)
         count <= count - 1;
      else 
         count <= 8'b1111_1111;
    end
end

endmodule