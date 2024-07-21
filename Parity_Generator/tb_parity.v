module tb;
  reg [7:0] in;
  wire parity;
  
  parity_generator uut (
    .in(in), 
    .parity_out(parity)
  );
  
  initial begin
    // Apply test vectors
    in = 8'h00;  // 0000 0000
    #10 in = 8'hFF;  // 1111 1111
    #10 in = 8'h55;  // 0101 0101
    #10 in = 8'hAA;  // 1010 1010
    #10 in = 8'h01;  // 0000 0001
    #10 in = 8'h02;  // 0000 0010
    #10 in = 8'h04;  // 0000 0100
    #10 in = 8'h08;  // 0000 1000
    #10 in = 8'h10;  // 0001 0000
    #10 in = 8'h20;  // 0010 0000
    #10 in = 8'h40;  // 0100 0000
    #10 in = 8'h80;  // 1000 0000
    #10 in = 8'h3C;  // 0011 1100
    #10 in = 8'hC3;  // 1100 0011
  end
  
  initial begin
    // Dump waveforms for analysis
    $dumpfile("parity.vcd");
    $dumpvars(0, tb);
  end
  
  initial begin
    // Monitor the input and output signals
    $monitor("in = %0b, parity = %0b", in, parity);
    #150 $finish;
  end
endmodule
