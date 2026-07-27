module boothmultiplier(a,b,clk,start,done,result);
	
  wire ldA,clrA,sftA,ldQ,clrQ,sftQ;
  wire ldM,clrFF,addsub,decr,ldcount;
  input signed [7:0]a,b;
  input start,clk;
  output done;
  wire qm1,eqz;
    output reg signed [15:0]result;
    wire done;
  wire [3:0] countdata;
  wire signed [7:0] A,M,Q,Z;   //A->Acc , M->Multiplicand , Q->Multiplier, Z->(A-M,A+M) 
  assign eqz = ~| (countdata);
    always@(posedge done)
    result<={A,Q};

  shiftreg reg1(A,Z,A[7],clk,ldA,clrA,sftA);
  
  shiftreg reg2(Q,a,A[0],clk,ldQ,clrQ,sftQ);
				
	dflipflop dff(Q[0],clk,clrFF,qm1);
				  
	PIPO reg3(M,b,clk,ldM);
				
	ALU  alu(Z,A,M,addsub);			
				
  bitcounter counter(countdata,decr,ldcount,clk);
    
	controller fsm(ldA,clrA,sftA,ldQ,clrQ,sftQ,ldM,clrFF,addsub,start,decr,ldcount,done,clk,Q[0],qm1,eqz); 

  endmodule 
   
