
module tb_encoder;
  reg [3:0] in;
  wire [1:0] out;
  
  // Instantiate the encoder
  encoder uut (
    .in(in),
    .out(out)
  );
  

  initial begin 
    // Apply test vectors
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;

  end
    // Finish simulation
    
  initial begin
    #100 $finish;
  end
  
  initial begin
    // Dump the waveform to a file
    $dumpfile("encoder.vcd");
    $dumpvars(0, tb_encoder);
  end
endmodule
