// module Octal_to_Binary_Encoder(input [7:0]in , output reg [2:0]out);
//   always @(*) begin
//     case(in)
//       8'h00 : out = 3'b000;
//       8'h01 : out = 3'b001;
//       8'h02 : out = 3'b010;
//       8'h04 : out = 3'b011;
//       8'h08 : out = 3'b100;
//       8'h10 : out = 3'b101;
//       8'h20 : out = 3'b110;
//       8'h40 : out = 3'b111;
// 		 default: out = 3'bxxx;
//   end
// endmodule


module Octal_to_Binary_Encoder(input [7:0] in, output reg [2:0] out);
  always @(*) begin
    case (in)
      8'b00000001: out = 3'b000;
      8'b00000010: out = 3'b001;
      8'b00000100: out = 3'b010;
      8'b00001000: out = 3'b011;
      8'b00010000: out = 3'b100;
      8'b00100000: out = 3'b101;
      8'b01000000: out = 3'b110;
      8'b10000000: out = 3'b111;
      default: out = 3'bxxx; // Undefined for multiple active inputs
    endcase
  end
endmodule
