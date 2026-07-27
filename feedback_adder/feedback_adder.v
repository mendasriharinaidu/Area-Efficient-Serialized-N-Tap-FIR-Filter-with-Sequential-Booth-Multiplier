module feedback_adder(clk,data_in,data_out);
parameter N=21;

input clk;
input [15:0] data_in;
output reg [15:0] data_out;

reg [15:0] shift_reg = 16'b0;
reg [7:0] count;

always @(posedge clk) 
begin
shift_reg <= data_in + shift_reg;
count     <= count + 1;
if (count == N-1) 
begin
data_out <=data_in+shift_reg;
count     <= 0;
shift_reg <= 0;
end
else 
count <= 0;
end
endmodule
 
