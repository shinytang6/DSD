module sram(output reg [7:0] dout,input [7:0] din,addr,input wr,rd,cs);
reg [7:0] mem[0:255];
always @(posedge wr or ~rd) begin
  if(cs) begin
     if(wr) mem[addr] = din;
     else if(~rd) dout = mem[addr];
  end
  else dout = 8'b0;
end
endmodule
