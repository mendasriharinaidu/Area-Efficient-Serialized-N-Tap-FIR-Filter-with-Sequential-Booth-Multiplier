module rd_counter(clk,rd,count);
parameter N=21,M=240;      // N indicates the taps of a fir filter
input clk; 
input rd;             // M indicates the no. of samples used to filter
output reg [7:0]count=0;
reg [7:0]i=0;
always@(posedge clk)
if(rd)
if(count<i+N-1)
count<=count+1;
else if(count==i+N-1)
begin
if(i==M-N)             // max i can be calculated using M and N i.e i=M-N       
i<=M-N;
else
i<=i+1;
if(count==M-1)
count<=M-1;
else
count<=i+1;
end
else
begin
count<=0;
i<=0;
end
endmodule

