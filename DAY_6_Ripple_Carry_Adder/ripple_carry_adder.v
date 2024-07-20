module Fa(input a_in, b_in, c_in, output sum, carry);
  assign sum = a_in ^ b_in ^ c_in;
  assign carry = (a_in & b_in) | (b_in & c_in) | (a_in & c_in);
endmodule

module ripple_carry_Adder(input [3:0]a_in,b_in,input c_in,output [3:0]sum,output carry);
  wire [3:0]c_out;
  Fa unit1(a_in[0],b_in[0],1'b0,sum[0],c_out[0]);
  Fa unit2(a_in[1],b_in[1],c_out[0],sum[1],c_out[1]);
  Fa unit3(a_in[2],b_in[2],c_out[1],sum[2],c_out[2]);
  Fa unit4(a_in[3],b_in[3],c_out[2],sum[3],c_out[3]);
  assign carry = c_out[3];
endmodule
