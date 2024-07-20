module tb_parallel_adder;

  // Declare testbench variables
  reg [3:0] a_in, b_in;
  reg c_in;
  wire [3:0] sum;
  wire carry;

  // Instantiate the parallel adder module
  parallel_adder uut (
    .a_in(a_in),
    .b_in(b_in),
    .c_in(c_in),
    .sum(sum),
    .carry(carry)
  );

  // Apply stimulus
  initial begin
    // Display the header for the output
    $display("a_in   b_in   c_in | sum    carry");
    $display("------------------------------");

    // Test case 1
    a_in = 4'b0000; b_in = 4'b0000; c_in = 1'b0;
    #10;
    $display("%b  %b  %b   | %b  %b", a_in, b_in, c_in, sum, carry);

    // Test case 2
    a_in = 4'b0001; b_in = 4'b0001; c_in = 1'b0;
    #10;
    $display("%b  %b  %b   | %b  %b", a_in, b_in, c_in, sum, carry);

    // Test case 3
    a_in = 4'b0011; b_in = 4'b0011; c_in = 1'b0;
    #10;
    $display("%b  %b  %b   | %b  %b", a_in, b_in, c_in, sum, carry);

    // Test case 4
    a_in = 4'b0111; b_in = 4'b0111; c_in = 1'b0;
    #10;
    $display("%b  %b  %b   | %b  %b", a_in, b_in, c_in, sum, carry);

    // Test case 5
    a_in = 4'b1111; b_in = 4'b1111; c_in = 1'b0;
    #10;
    $display("%b  %b  %b   | %b  %b", a_in, b_in, c_in, sum, carry);

    // Test case 6
    a_in = 4'b0101; b_in = 4'b1010; c_in = 1'b1;
    #10;
    $display("%b  %b  %b   | %b  %b", a_in, b_in, c_in, sum, carry);

    // Test case 7
    a_in = 4'b1110; b_in = 4'b0001; c_in = 1'b1;
    #10;
    $display("%b  %b  %b   | %b  %b", a_in, b_in, c_in, sum, carry);

    // Test case 8
    a_in = 4'b1010; b_in = 4'b0101; c_in = 1'b1;
    #10;
    $display("%b  %b  %b   | %b  %b", a_in, b_in, c_in, sum, carry);

    // Add more test cases as needed
  end

  // Finish simulation after 100 time units
  initial begin
    #100 $finish;
  end

  // Dump waveforms for viewing
  initial begin
    $dumpfile("parallel_adder.vcd");
    $dumpvars;
  end

endmodule
