`timescale 10ns/1ns
module wavegen();
reg dat_out;
initial
begin
dat_out = 0;
#2 dat_out = 1;
#1 dat_out = 0;
#9 dat_out = 1;
#10 dat_out = 0;
#2 dat_out = 1;
#3 dat_out = 0;
#5 dat_out = 1;
#5;
end
endmodule