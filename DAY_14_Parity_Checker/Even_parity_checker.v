
module parity_generator(input [7:0]in,input parity_in , output error);
  wire w1;
  assign w1 = (in[0] ^ in[1])^(in[2] ^ in[3])^(in[4] ^ in[5])^(in[6] ^ in[7]) ^ parity_in ;  
  assign error = w1 ? 1'b1 : 1'b0;
endmodule
