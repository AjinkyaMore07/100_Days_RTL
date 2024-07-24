module water_level_indicator(input [7:0] level, output reg full, half, empty);
  always @(*) begin
    case(level)
      8'b00000001, 8'b00000010, 8'b00000100: begin
        {full, half, empty} = 3'b001; // empty
      end
      8'b00001000, 8'b00010000, 8'b00100000: begin
        {full, half, empty} = 3'b010; // half
      end
      8'b01000000, 8'b10000000: begin
        {full, half, empty} = 3'b100; // full
      end
      default: begin
        {full, half, empty} = 3'bxxx; // undefined
      end
    endcase
  end
endmodule
