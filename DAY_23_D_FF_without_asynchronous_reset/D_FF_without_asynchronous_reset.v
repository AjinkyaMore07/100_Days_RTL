module D_FF_with_asynchronous_reset (
    input wire d,
    input wire clk,
    input wire reset,
    output wire q
);
  reg temp;
  always @(posedge clk or negedge reset) begin
    if (!reset)
      temp <= 0;
    else
      temp <= d;
  end
  assign q = temp;
endmodule
