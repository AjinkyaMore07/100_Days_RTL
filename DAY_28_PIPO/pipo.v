// Code your design here
module pipo(input [3:0]in,clk,reset,output reg [3:0] out);
  always @(posedge clk)begin
    if(reset)
      out <=0;
    else
      out <= in;
  end
endmodule
