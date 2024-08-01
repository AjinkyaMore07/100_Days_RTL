module updown #(parameter width = 4)(
  input clk,
  input reset,
  input mode,
  input load,
  input [width-1:0] in,
  output reg [width-1:0] out
);

  always @(posedge clk or posedge reset) begin
    if (reset)
      out <= 0;
    else if (load)
      out <= in;
    else begin
      if (mode)
        out <= out + 1;
      else
        out <= out - 1;
    end
  end

endmodule
