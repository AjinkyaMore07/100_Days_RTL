module adder_substrator(input [3:0] a, b, input cin, output [3:0] sum, output carry);
  wire [3:0] w, c;

  // XOR each bit of b with cin
  assign w[0] = (b[0] ^ cin); 
  assign w[1] = (b[1] ^ cin); 
  assign w[2] = (b[2] ^ cin); 
  assign w[3] = (b[3] ^ cin); 
  
  // Instantiate 4-bit adder units
  adder unit1(a[0], w[0], cin, sum[0], c[0]);
  adder unit2(a[1], w[1], c[0], sum[1], c[1]);
  adder unit3(a[2], w[2], c[1], sum[2], c[2]);
  adder unit4(a[3], w[3], c[2], sum[3], c[3]);

  // Final carry output
  assign carry = c[3];
endmodule


module adder(input a, b, input cin, output sum, output carry);
  assign {carry, sum} = a + b + cin;
endmodule
