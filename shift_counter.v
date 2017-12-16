module shift_counter(output reg [7:0] count, input clk,reset);
reg w;
always @(posedge clk) begin
  if(reset) begin
    count <= 8'b0000_0001;
    w <= 0;
  end
  else begin
    case(w)
      0: begin
           if(count[7] == 1) begin
              w <= 1;
              count[6:0] <= count[7:1];
              count[7] <= count[0];
           end
           else begin
              count[7:1] <= count[6:0];
              count[0] <= count[7];
           end
         end

      1: begin
           if(count[0] == 1) begin
              w <= 0;
              count[7:1] <= count[6:0];
              count[0] <= count[7];
           end
           else begin
              count[6:0] <= count[7:1];
              count[7] <= count[0];
           end
         end
    endcase
  end


end
endmodule