module piso(input clk, reset, mode, input [3:0] in, output out);
  reg [3:0] temp;
  
  assign out = temp[0]; // The output is the least significant bit of temp
  
  always @(posedge clk or posedge reset) begin
    if (reset)
      temp <= 0;
    else begin
      if (mode)
        temp <= in; // Parallel load when mode is high
      else
        temp <= {1'b0, temp[3:1]}; // Shift right when mode is low
    end
  end
endmodule
