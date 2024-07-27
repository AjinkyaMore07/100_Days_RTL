module sipo(input in,clk,reset,output reg [3:0] out);
  always @(posedge clk)begin
    if(reset)
      out <=0;
    else
      out <= {in,out[3:1]};
  end
endmodule
