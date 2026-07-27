module PIPO(data_out,data_in,clk,ld);

input signed [7:0] data_in;
input clk,ld;
output reg signed [7:0] data_out;

always@(posedge clk)
  begin
      if(ld)
        data_out <= data_in;
   end
endmodule
