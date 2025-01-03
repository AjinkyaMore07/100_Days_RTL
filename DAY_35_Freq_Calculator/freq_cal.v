module freq_cal(en,clk,reset,q);
  input en,clk,reset;
  output reg [5:0] q;
  
  
  wire derived_clk;
  
  assign derived_clk = clk & en;
  
  always @(posedge derived_clk , posedge reset )
    begin
      if(reset)
        	q<=0;
      else
        q<=q+1;
    end
  
endmodule
