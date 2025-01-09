module mealy_0110(
    input in,
    input clk,
    input reset,
    output reg q
);
  
  // State encoding
  parameter s0 = 2'b00,
            s1 = 2'b01,
            s2 = 2'b10,
            s3 = 2'b11;

  reg [1:0] cs, ns; // Current state and next state
  
  // State register (sequential block)
  always @(posedge clk or posedge reset) begin
    if (reset)
      cs <= s0; // Reset to the initial state
    else
      cs <= ns; // Transition to the next state
  end
  
  // Next state logic (combinational block)
  always @(*) begin
    case (cs)
      s0: ns = (in) ? s0 : s1; // If input is 0, go to s1
      s1: ns = (in) ? s2 : s1; // If input is 1, go to s2
      s2: ns = (in) ? s3 : s1; // If input is 1, go to s3
      s3: ns = (in) ? s0 : s1; // If input is 0, return to s0
      default: ns = s0;        // Default to the initial state
    endcase
  end
  
  // Output logic
  always @(*) begin
    q = (cs == s3 && ~in) ? 1 : 0; // Output 1 when in state s3 and input is 0
  end
  
endmodule
