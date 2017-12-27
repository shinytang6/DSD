`timescale 1ns/1ns
`include "ones_count.v"
module tb_ones_count;
wire [3:0] count;
reg [7:0] data;
integer k;
ones_count c0(.count(count),.dat_in(data));

initial begin
  data = 8'b0;
  for(k=0; k<256; k=k+1) begin
    #5;
    data = data + 1;
  end
end

initial
  $monitor("At time %t, count=%4b, data_in =%8b",$time,count,data);

endmodule