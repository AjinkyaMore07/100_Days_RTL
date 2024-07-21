module parity_generator(input [7:0]in,output parity_out);
  assign parity_out = (in[0] ^ in[1])^(in[2] ^ in[3])^(in[4] ^ in[5])^(in[6] ^ in[7]);  
endmodule

module parity_generator(input [7:0]in,output parity_out);
  assign parity_out = ^in; 
endmodule
