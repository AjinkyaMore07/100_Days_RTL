module divide_by_2 (input clk , reset , output divideby2);
  reg [3:0]temp;
  always @(posedge clk,negedge reset)begin
    if(!reset)
      temp<=0;
    else
      temp<=temp+1;
  end
  assign divideby2 = temp[1];
endmodule
