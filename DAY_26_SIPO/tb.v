module tb_sipo;
  reg in;
  reg clk;
  reg reset;
  wire [3:0] out;

  // Instantiate the SIPO module
  sipo uut (
    .in(in),
    .clk(clk),
    .reset(reset),
    .out(out)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10 time units clock period
  end

  // Test sequence
  initial begin
    // Initialize signals
    in = 0;
    reset = 1;

    // Apply reset
    #10;
    reset = 0;

    // Apply input sequence
    #10 in = 1; // 1st input bit
    #10 in = 0; // 2nd input bit
    #10 in = 1; // 3rd input bit
    #10 in = 1; // 4th input bit

  end

  // Monitor the signals
  initial begin
    $monitor("Time = %d, Reset = %b, In = %b, Out = %b", $time, reset, in, out);
    $dumpfile("file.vcd");
    $dumpvars;
    
    #80 // Finish the simulation
    $finish;
  end
endmodule
