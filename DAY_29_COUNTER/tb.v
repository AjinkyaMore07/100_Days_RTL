module counter_tb;
  reg clk;
  reg reset;
  wire [2:0] out;

  // Instantiate the counter module
  counter uut (
    .clk(clk),
    .reset(reset),
    .out(out)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    // Initialize inputs
    clk = 0;
    reset = 0;
	#10;
    // Apply reset
    reset = 1;
    #10;
    reset = 0;

    // Run the counter for a while
    #100;

    // Apply reset again
    reset = 1;
    #10;
    reset = 0;
  end
  // Monitor changes
  initial begin
    $monitor("Time: %0d, clk: %b, reset: %b, out: %b", 
             $time, clk, reset, out);
    $dumpfile("file.vcd");
    $dumpvars;
    #200 $finish;
  end
endmodule
