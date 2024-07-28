module piso_tb;
  reg clk;
  reg reset;
  reg mode;
  reg [3:0] in;
  wire out;

  // Instantiate the PISO module
  piso uut (
    .clk(clk),
    .reset(reset),
    .mode(mode),
    .in(in),
    .out(out)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    // Initialize inputs
    clk = 0;
    reset = 0;
    mode = 0;
    in = 0;

    // Apply reset
    reset = 1;
    #10;
    reset = 0;

    // Load data into the shift register
    mode = 1;
    in = 4'b1011;
    #10;
    mode = 0;

    // Shift out data
    #50;

    // Load new data into the shift register
    mode = 1;
    in = 4'b1100;
    #10;
    mode = 0;

  
  end

  // Monitor changes
  initial begin
    $monitor("Time: %0d, clk: %b, reset: %b, mode: %b, in: %b, out: %b", 
             $time, clk, reset, mode, in, out);
    $dumpfile("file.vcd");
    $dumpvars;
 	#500 $finish;
  end
endmodule
