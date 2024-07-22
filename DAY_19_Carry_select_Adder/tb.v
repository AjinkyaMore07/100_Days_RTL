// Code your testbench here
// or browse Examples
module tb_carry_select_adder;

  // Testbench signals
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire carry;

  // Instantiate the carry_select_adder
  carry_select_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
  );

  // Test procedure
  initial begin
    // Initialize signals
    a = 4'b0000;
    b = 4'b0000;
    cin = 0;

    // Apply test vectors
    #10 a = 4'b0001; b = 4'b0001; cin = 0; // Test case 1
    #10 a = 4'b0010; b = 4'b0011; cin = 0; // Test case 2
    #10 a = 4'b0101; b = 4'b0101; cin = 1; // Test case 3
    #10 a = 4'b1111; b = 4'b0001; cin = 1; // Test case 4
    #10 a = 4'b1010; b = 4'b1100; cin = 0; // Test case 5
    #10 a = 4'b0110; b = 4'b1001; cin = 1; // Test case 6

    // End of simulation
  end

  // Monitor changes to signals
  initial begin
    $monitor("Time = %0d: a = %b, b = %b, cin = %b, sum = %b, carry = %b",
             $time, a, b, cin, sum, carry);
    #100 $finish;
  end
  
  initial begin
    $dumpfile("file.vcd");
    $dumpvars;
  end

endmodule
