module johnson_Counter(clk,reset,q);
  input clk,reset;
  output reg [3:0]q;
  always @(posedge clk)
    begin
      if(reset)
        q<=0;
      else
        begin
        	q[0]<= ~q[3];
          	q[1]<=q[0];
          	q[2]<=q[1];
          	q[3]<=q[2];
        end
    end
  
endmodule
