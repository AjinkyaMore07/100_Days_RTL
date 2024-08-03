
module counter_tb;
  reg clk;
  reg clear;
  wire [3:0] out;

  // Instantiate the counter module
  counter uut (
    .clk(clk),
    .clear(clear),
    .out(out)
  );

  // Generate clock signal
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // Clock period is 10 units
  end

  // Test sequence
  initial begin
    // Initialize signals
    clear = 0;
    
    // Apply reset
    #10 clear = 1;
    #10 clear = 0;
    
    // Observe counter behavior
    #50;
    
    // Apply reset again
    clear = 1;
    #10 clear = 0;
  end

  // Monitor output
  initial begin
    $monitor("Time = %0t | clear = %b | out = %b", $time, clear, out);
    $dumpfile("file.vcd");
    $dumpvars;
    #100 $finish;
  end

endmodule
