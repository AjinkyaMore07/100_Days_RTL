`timescale 1ns / 1ps

module edge_detector_tb;

  // Inputs
  reg in;
  reg clk;
  reg reset;

  // Outputs
  wire out;

  // Instantiate the Unit Under Test (UUT)
  posedge_detector uut (
    .in(in),
    .clk(clk),
    .reset(reset),
    .out(out)
  );

  // Clock generation
  always #5 clk = ~clk; // Clock period = 10ns

  initial begin
    // Initialize Inputs
    clk = 0;
    in = 0;
    reset = 1;

    // Apply reset
    #10 reset = 0;

    // Test case 1: No edge, `in` remains low
    #10 in = 0;  // No edge
    #20;

    // Test case 2: Rising edge
    #10 in = 1;  // Rising edge
    #20;

    // Test case 3: No edge, `in` remains high
    #10 in = 1;  // No edge
    #20;

    // Test case 4: Falling edge (shouldn't be detected)
    #10 in = 0;  // Falling edge (ignored)
    #20;

    // Test case 5: Another rising edge
    #10 in = 1;  // Rising edge
    #20;

    // Test case 6: Reset while `in` is high
    #10 reset = 1;
    #10 reset = 0;

    // Test case 7: Rising edge after reset
    #10 in = 0;  // Initialize to low
    #10 in = 1;  // Rising edge after reset
    #20;

    // End simulation
    #20 $finish;
  end

  initial begin
    $monitor("Time=%0t | clk=%b | reset=%b | in=%b | out=%b", $time, clk, reset, in, out);
    $dumpfile("file.vcd");
    $dumpvars;
  end

endmodule
