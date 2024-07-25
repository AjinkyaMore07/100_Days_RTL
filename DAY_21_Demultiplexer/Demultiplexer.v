module demultiplexer(input a, input [1:0] sel, output [3:0] y);
  assign y[0] = ~sel[0] & ~sel[1] & a;
  assign y[1] = ~sel[0] &  sel[1] & a;
  assign y[2] =  sel[0] & ~sel[1] & a;
  assign y[3] =  sel[0] &  sel[1] & a;
endmodule
