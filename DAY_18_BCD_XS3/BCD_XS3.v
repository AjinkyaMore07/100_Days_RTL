module BCD_XS3(input a,b,c,d ,output w,x,y,z);
  assign z = ~d;
  assign y = ~(c^d);
  assign x = (~b & c)|(~b & d)|(b & ~c & ~d);
  assign w = a | b&c | b&d;
endmodule
