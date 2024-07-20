// Code your design here
module Basic_Gates(input a_in,b_in,output not_A,not_B,and_out,or_out,nor_out,nand_out,xor_out,xnor_out);
  
  not g1(not_A,a_in);
  not g2(not_B,b_in);
  and g3(and_out,a_in,b_in);
  or  g4(or_out,a_in,b_in);
  nor g5(nor_out,a_in,b_in);
  nand g6(nand_out,a_in,b_in);
  xor  g7(xor_out,a_in,b_in);
  xnor g8(xnor_out,a_in,b_in);
  
endmodule
