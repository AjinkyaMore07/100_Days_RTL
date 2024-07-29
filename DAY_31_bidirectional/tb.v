// Code your testbench here
// or browse Examples
module tb_bidirectional;

  // Testbench signals
  reg clk;
  reg reset;
  reg mode;
  reg load;
  reg [3:0] in;
  wire [3:0] temp;

  // Instantiate the bidirectional shift register
  bidirectional uut (
    .clk(clk),
    .reset(reset),
    .mode(mode),
    .load(load),
    .in(in),
    .temp(temp)
  );

  // Clock generation
  always begin
    #5 clk = ~clk; // 10ns period
  end

  // Test sequence
  initial begin
    clk = 0;
    reset = 0;
    mode = 0;
    load = 0;
    in = 4'b0000;

    // Apply reset
    #10 reset = 1;
    #10 reset = 0;

    // Load a value
    #10 load = 1;
    	mode = 1;
        in = 4'b1010;
    #10 load = 0;

    // Shift left
    #10 mode = 0; // Shift left
        load = 0;
    #20;

    // Shift right
    #10 mode = 1; // Shift right
        load = 0;
    #20;

    // Load another value
    #10 load = 1;
        in = 4'b0101;
    #10 load = 0;

    // Shift left
    #10 mode = 0; // Shift left
    #20;

  end
  
  initial begin
    $dumpfile("file.vcd");
    $dumpvars;
   #500 $finish;
  end

endmodule
