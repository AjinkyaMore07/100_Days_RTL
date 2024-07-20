module Basic_Gates(input a_in, b_in, 
                   output reg not_A, not_B, 
                   output reg and_out, or_out, 
                   output reg nor_out, nand_out, 
                   output reg xor_out, xnor_out);

  // Always block to describe behavior
  always @(*) begin
    not_A = ~a_in;
    not_B = ~b_in;
    and_out = a_in & b_in;
    or_out = a_in | b_in;
    nor_out = ~(a_in | b_in);
    nand_out = ~(a_in & b_in);
    xor_out = a_in ^ b_in;
    xnor_out = ~(a_in ^ b_in);
  end

endmodule
