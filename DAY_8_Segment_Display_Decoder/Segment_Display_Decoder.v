module Segment_Display_Decoder (
    input [3:0] in,   
    output reg [6:0] y );
  
    always @(*) begin
        case (in)
            4'b0000: y = 7'b0111111; // 0
            4'b0001: y = 7'b0000110; // 1
            4'b0010: y = 7'b1011011; // 2
            4'b0011: y = 7'b1001111; // 3
            4'b0100: y = 7'b1100110; // 4
            4'b0101: y = 7'b1101101; // 5
            4'b0110: y = 7'b1111101; // 6
            4'b0111: y = 7'b0000111; // 7
            4'b1000: y = 7'b1111111; // 8
            4'b1001: y = 7'b1101111; // 9
            4'b1010: y = 7'b1110111; // A
            4'b1011: y = 7'b1111100; // b
            4'b1100: y = 7'b0111001; // C
            4'b1101: y = 7'b1011110; // d
            4'b1110: y = 7'b1111001; // E
            4'b1111: y = 7'b1110001; // F
            default: y = 7'b0111111; // Default to '0'
        endcase
    end
endmodule
