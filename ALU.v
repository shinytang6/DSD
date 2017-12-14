module ALU(output reg [7:0]sum,reg c_out,input c_in,[2:0]oper,[7:0]a,b);
  always @(*) begin
  case(oper)
    3'b000: {c_out,sum} = a+b+c_in;
    3'b001: {c_out,sum} = a+~b+c_in;
    3'b010: {c_out,sum} = ~a+b+~c_in;
    3'b011: {c_out,sum} = {1'b0,a|b};
    3'b100: {c_out,sum} = {1'b0,a&b};
    3'b101: {c_out,sum} = {1'b0,(~a)&b};
    3'b110: {c_out,sum} = {1'b0,a^b};
    3'b111: {c_out,sum} = {1'b0,a~^b};
  endcase
end
endmodule