module pattern_1010 (
    input in, 
    input clk, 
    input reset, 
    output reg q
);
    // State Encoding
    parameter s0 = 3'b000, 
              s1 = 3'b001, 
              s2 = 3'b010, 
              s3 = 3'b011, 
              s4 = 3'b100;
              
    reg [2:0] cs, ns; // Current state and next state

    // State Transition Logic
    always @(posedge clk or posedge reset) begin
        if (reset)
            cs <= s0; // Reset to initial state
        else
            cs <= ns; // Move to next state
    end

    // Next State Logic
    always @(*) begin
        case (cs)
            s0: ns = (in) ? s1 : s0;
            s1: ns = (in) ? s1 : s2;
            s2: ns = (in) ? s3 : s0;
            s3: ns = (in) ? s1 : s4;
            s4: ns = (in) ? s1 : s0;
            default: ns = s0;
        endcase
    end

  assign q = (cs == s4) ? 1:0;
endmodule
