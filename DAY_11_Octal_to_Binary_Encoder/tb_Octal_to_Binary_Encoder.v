module tb_Octal_to_Binary_Encoder;
  reg [7:0] in;
  wire [2:0] out;
  
  // Instantiate the encoder
  Octal_to_Binary_Encoder uut (
    .in(in),
    .out(out)
  );
  
  initial begin
    // Dump the waveform to a file
    $dumpfile("octal_to_binary_encoder.vcd");
    $dumpvars(0, tb_Octal_to_Binary_Encoder);
    
    // Apply test vectors
    in = 8'b00000001; #10;
    in = 8'b00000010; #10;
    in = 8'b00000100; #10;
    in = 8'b00001000; #10;
    in = 8'b00010000; #10;
    in = 8'b00100000; #10;
    in = 8'b01000000; #10;
    in = 8'b10000000; #10;

    // Finish simulation
    #100 $finish;
  end
  
endmodule
