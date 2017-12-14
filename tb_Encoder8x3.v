`timescale 1ns/1ns
`include "Encoder8x3.v"

module tb_Encoder8x3;

  reg [7:0] tb_data;
  wire [2:0] tb_code;
  integer k;
  Encoder8x3 u0(.data(tb_data),.code(tb_code));
  initial begin
	tb_data = 8'bx;
	#5 ;
	for(k=0; k<8; k=k+1)
	begin
	  tb_data = 8'b0;
	  tb_data[k] = 1; 
	  #5 ;
	end
  end

  initial
	$monitor("At time %t, data=%b, code =%b",$time,tb_data,tb_code);
endmodule