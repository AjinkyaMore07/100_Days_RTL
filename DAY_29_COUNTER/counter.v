module counter(input clk,reset,output reg [2:0] out);
  always @(posedge clk) begin
    if(reset)
      out <=0;
    else
      out <= out+1;
  end
endmodule
