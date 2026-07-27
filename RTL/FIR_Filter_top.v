module N_tap_FIR_Filter(clk,data_in1,data_in2,done,result);

input clk;
wire start;
input [7:0]data_in1,data_in2;
wire [7:0]data_out1,data_out2;

output done;

wire [15:0]product;

output [15:0]result;

assign start=1;
 
ram m1(clk,done,data_in1,data_out1,data_in2,data_out2);
boothmultiplier m2(data_out1,data_out2,clk,start,done,product);
feedback_adder m3(done,product,result);

endmodule
