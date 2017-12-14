module dec_counter(output reg [3:0] count,input clk,reset);
always @(posedge clk) begin
  if(reset) count<=0;
  else begin
    if(count >= 4'd10)
       count <= 0;
    else 
        count <= count + 1;
    end
end
endmodule