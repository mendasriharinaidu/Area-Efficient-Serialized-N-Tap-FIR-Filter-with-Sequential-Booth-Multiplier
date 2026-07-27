module wr_counter(clk,addr);
parameter M=240;
input clk;
output reg [7:0]addr=0;
always@(posedge clk)
if(addr<M-1)
addr<=addr+1;
else if(addr==M-1)
addr<=M-1;
else
addr<=0;
endmodule
