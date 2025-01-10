
module posedge_detector(in,clk,reset,out);
  input in,clk,reset;
  output reg out;
  reg temp;
  
  always @(posedge clk)
    begin
      if(reset)
        begin
          out<=0;
          temp<=0;
        end
      else
        begin
          temp <=in;
          out <= (~temp & in);
        end
    end
endmodule
