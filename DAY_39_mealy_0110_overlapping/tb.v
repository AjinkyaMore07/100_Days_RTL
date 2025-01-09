module tb_mealy_0110;

  // Testbench signals
  reg in;
  reg clk;
  reg reset;
  wire q;

  // Instantiate the design under test (DUT)
  mealy_0110 dut (
    .in(in),
    .clk(clk),
    .reset(reset),
    .q(q)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock period
  end

  // Stimulus generation
  initial begin
    // Initialize inputs
    reset = 1; // Assert reset
    in = 0;

    #10 reset = 0; // Deassert reset

    repeat(50)
      begin
        in = $urandom;
        #15;
      end
    
    #10 $finish; // End simulation
  end

  // Monitor signals
  initial begin
    $monitor("Time: %0t | in: %b | reset: %b | q: %b | cs: %b", $time, in, reset, q, dut.cs);
    $dumpfile("file.vcd");
    $dumpvars;
  end

endmodule
