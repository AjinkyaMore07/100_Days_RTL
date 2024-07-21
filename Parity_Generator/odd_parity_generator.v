module parity_generator(input [7:0]in,output parity_out);
  wire w1;
  assign w1 = ^in; 
  assign parity_out = ~w1;
endmodule
