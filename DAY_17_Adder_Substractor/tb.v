module tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire carry;

  // Instantiate the adder_substrator module
  adder_substrator dut(a, b, cin, sum, carry);

  // Generate random test vectors and monitor signals
  initial begin
    $monitor("Time: %0d, a: %b, b: %b, cin: %b, sum: %b, carry: %b", $time, a, b, cin, sum, carry);
    repeat(10) begin
      a = $urandom_range(0, 15);
      b = $urandom_range(0, 15);
      cin = $urandom_range(0, 1); // 0 for addition, 1 for subtraction
      #5; // Wait for 5 time units between each test
    end
  end

  // Dump the waveform to a VCD file
  initial begin
    $dumpfile("file.vcd");
    $dumpvars(0, tb);
  end

  // Finish the simulation after 100 time units
  initial begin
    #100 $finish;
  end
endmodule
