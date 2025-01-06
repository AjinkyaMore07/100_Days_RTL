module lfsr(clk, reset, q);
  input clk, reset;
  output reg [4:0] q;
  wire feedback;  // Declared feedback as a wire

  // Feedback is XOR of specific bits (polynomial: x^5 + x^3 + 1)
  assign feedback = q[2] ^ q[4];

  always @(posedge clk) begin
    if (reset)
      q <= 5'b00001;  // Initial seed value (non-zero)
    else
      q <= {q[3:0], feedback};  // Shift left and insert feedback
  end
endmodule
