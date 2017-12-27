module seq_detect_2(output reg flag,input din,clk,rst_n);
  parameter E=4'b0001,F=4'b0010,G=4'b0100,H=4'b1000;
  reg [3:0] state;
always @(negedge clk) begin
    if(~rst_n) begin flag <= 0;state<=E; end
    else begin
      case(state)
	E: if(din) begin 
	  	state <= E;
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
	        state <= F;
	  	flag <= 0;
              end
	G: if(din) begin 
	  	state <= H;
	  	flag <= 0;
              end 
	      else begin
	        state <= F;
	  	flag <= 0;
              end
	H: if(din) begin 
	  	state <= E;
	  	flag <= 0;
              end 
	      else begin
	        state <= F;
	  	flag <= 1;
              end
	default: begin
	        state <=E;
	        flag <= 0;
	      end
	endcase
    end
  end


endmodule
