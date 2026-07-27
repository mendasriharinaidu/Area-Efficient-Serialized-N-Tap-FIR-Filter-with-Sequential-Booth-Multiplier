module wr_pointer(clk,addr);
parameter N=21;
input clk;
output reg[7:0]addr=0;
always@(posedge clk)
if(addr<N-1)
addr<=addr+1;
else if(addr==N-1)
addr<=N-1;
else
addr<=0;
endmodule
