module ALU(c,a,b,addsub);

  input addsub ; 
  input signed[7:0] a,b;
  output reg signed[7:0] c;
  
  always@(*)
    begin
      if(addsub)
	      c  = a+b;
      else if(!addsub)
	      c  = a-b;
	end
	
endmodule
  
