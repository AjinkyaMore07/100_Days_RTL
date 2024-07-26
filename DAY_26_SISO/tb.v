module tb_shift_register;
  parameter WIDTH = 4;
  reg s_in;
  reg clk;
  reg arstn;
  wire s_out;
  
  // Instantiate the shift register module
  siso #(WIDTH) uut (
    .s_in(s_in),
    .clk(clk),
    .arstn(arstn),
    .s_out(s_out)
  );
  
  // Clock generation
  always #5 clk = ~clk; // Clock with a period of 10 time units
  
  // Test sequence
  initial begin
    // Initialize signals
    clk = 0;
    arstn = 0;
    s_in = 0;
    
    // Apply asynchronous reset
    @(posedge clk)arstn = 1;
    
    // Shift in a pattern
     @(posedge clk) s_in = 1;
     @(posedge clk) s_in = 0;
     @(posedge clk) s_in = 1;
     @(posedge clk) s_in = 1;
     @(posedge clk) s_in = 0;
   
    #50;
    
       $finish;
  end
  
  // Monitor output
  initial begin
    $monitor("Time = %0t, s_in = %b, s_out = %b, temp = %b", $time, s_in, s_out, uut.temp);
  end
  
  // Dump waveforms
  initial begin
    $dumpfile("shift_register.vcd");
    $dumpvars(0, tb_shift_register);
  end
endmodule
