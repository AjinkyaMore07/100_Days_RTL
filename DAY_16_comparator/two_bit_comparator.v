module comparator(input a0,a1,b0,b1,output E,L,G);
  assign E = ({a1,a0} == {b1,b0}); //A==B;
  assign L = ({a1,a0} < {b1,b0});  //A<B
  assign G = ({a1,a0} > {b1,b0});
endmodule
