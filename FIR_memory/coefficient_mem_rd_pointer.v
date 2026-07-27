module coefficient_mem_rd_pointer(clk,rd,addr);
parameter N=21,M=240;
input clk;
input rd;
output reg [7:0]addr=0;
reg [7:0]p=0;
always@(posedge clk)
if(rd)
if(addr<N-1)
addr<=addr+1;
else if(addr==N-1)
begin
p<=p+1;
if(p==M-N)
begin
addr<=N-1;
p<=M-N;
end
else
addr<=0;
end
else
addr<=0;
endmodule

