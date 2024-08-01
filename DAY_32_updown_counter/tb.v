// Code your testbench here
// or browse Examples
module top;

  reg clk, reset, mode, load;
  reg [3:0] in;
  wire [3:0] out;
  
  updown #(4) u1 (.clk(clk), .reset(reset), .mode(mode), .load(load), .in(in), .out(out));

  initial begin
    // Initialize inputs
    clk = 0;
    reset = 1;
    mode = 0;
    load = 0;
    in = 4'b1010;
    
    // Reset the counter
    #5 reset = 0;
    
    // Load value into counter
    #5 load = 1;
    #5 load = 0;
    
    // Start counting
    #10 mode = 1;  // Count up
    #50 mode = 0;  // Count down
    
    // Test other conditions
    #50 reset = 1; // Reset the counter
    #10 reset = 0;
    
    #10 $finish;
  end
  
  always #5 clk = ~clk;  // Clock generation
  
  initial begin
    $dumpfile("file.vcd");
    $dumpvars;
  end

endmodule
