module bidirectional(input clk, reset, mode, load, input [3:0] in, output reg [3:0] temp);
  always @(posedge clk or posedge reset) begin
    if (reset)
      temp <= 4'b0;
    else begin
      case ({load, mode})
        2'b00 : temp <= temp;
        2'b01 : temp <= temp >> 1;
        2'b10 : temp <= temp << 1;
        2'b11 : temp <= in;
        default : temp <= temp;
      endcase
    end
  end
endmodule
