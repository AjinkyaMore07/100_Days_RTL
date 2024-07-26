module tb;
  reg j, k, clk, reset;
  wire q;
  
  jkff dut(j, k, clk, reset, q);
  
  initial begin
    clk = 0;
    reset = 1;
    repeat(5) @(posedge clk); // Wait for 5 clock edges
    reset = 0;
  end
  
  always #10 clk = ~clk; // Generate clock signal with 20 time units period
  
  initial begin
    repeat(10) begin
      {j,k} = $urandom_range(0,3); // Generate random values for j and k
      @(posedge clk); // Wait for the next positive clock edge
    end
  end

  initial begin
    $dumpfile("file.vcd"); // Specify the dump file name
    $dumpvars; // Dump all variables
    #200 $finish; // Run the simulation for 200 time units
  end
  
endmodule
