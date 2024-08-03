module counter(
    input clk,
    input clear,
    output reg [3:0] out
);
  always @(posedge clk)
    begin
      if(clear)
        out <= 4'b0001; // Initialize to 0001 when clear is high
      else
        out <= {out[2:0], out[3]}; // Rotate bits to the left
    end
endmodule
