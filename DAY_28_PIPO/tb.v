module tb_sipo;
  reg [3:0]in;
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
	reset = 1;
    #10;
    reset = 0;
    
    in = 4'b1111;
    #10;
    in = 4'b1101;
    #10;
    in = 4'b0001;
    #10;
    in = 4'b1100;
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
