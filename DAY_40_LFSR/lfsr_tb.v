module tb_lfsr;
  reg clk, reset;
  wire [4:0] q;

  // Instantiate the LFSR
  lfsr uut (.clk(clk), .reset(reset), .q(q));

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock period
  end

  // Test stimulus
  initial begin
    reset = 1;  // Reset the LFSR
    #10;
    reset = 0;  // Release reset
    #100;
    $stop;  // End simulation
  end

  // Monitor output
  initial begin
    $monitor("Time = %0t, LFSR Output = %b", $time, q);
    $dumpfile("file.vcd");
    $dumpvars;
  end
endmodule
