module siso #(parameter width = 4) (input s_in,clk,arstn,output s_out);
  reg [width-1:0] temp;
  always @(posedge clk,negedge arstn)begin
    if(!arstn)
      temp<=0;
    else begin
      temp <= temp >> 1;
      temp[3] <= s_in;
    end
  end
 assign s_out = temp[0];
endmodule
