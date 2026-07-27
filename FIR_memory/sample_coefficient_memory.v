module ram(clk,done,data_in1,data_out1,data_in2,data_out2);
parameter M=240,N=21;
input clk;
input done;
wire [7:0]wr_addr,rd_addr;
wire [7:0]wr_point,rd_point;
wire rd;
input [7:0]data_in1,data_in2;
output reg [7:0]data_out1,data_out2;
reg[7:0]mem1[0:M-1];
reg[7:0]mem2[0:N-1];

assign rd=(wr_addr>0)?1:0;

wr_counter a(clk,wr_addr);
rd_counter b(done,rd,rd_addr);
wr_pointer c(clk,wr_point);
rd_pointer d(done,rd,rd_point);

always@(posedge clk)
begin
mem1[wr_addr]<=data_in1;
mem2[wr_point]<=data_in2;
end

always@(posedge clk)
begin
data_out1<=mem1[rd_addr];
data_out2<=mem2[rd_point];
end

endmodule
