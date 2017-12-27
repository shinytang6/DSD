module seq_detect(output reg flag,input din,clk,rst_n);
  parameter A=4'b0001,B=4'b0010,C=4'b0100,D=4'b1000;
  reg [3:0] state;
  always @(negedge clk) begin
    if(~rst_n) begin flag <= 0;state<=A; end
    else begin
      case(state)
	A: if(din) begin 
	  	state <= B;
	  	flag <= 0;
              end 
	      else begin
	        state <= A;
	  	flag <= 0;
              end
   	B: if(din) begin 
	  	state <= C;
	  	flag <= 0;
              end 
	      else begin
	        state <= A;
	  	flag <= 0;
              end
	C: if(din) begin 
	  	state <= C;
	  	flag <= 0;
              end 
	      else begin
	        state <= D;
	  	flag <= 0;
              end
	D: if(din) begin 
	  	state <= B;
	  	flag <= 1;
              end 
	      else begin
	        state <= A;
	  	flag <= 0;
              end
	default: begin
	        state <=A;
	        flag <= 0;
	      end
	endcase
    end
  end



endmodule
