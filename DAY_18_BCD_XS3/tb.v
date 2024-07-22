`timescale 1ns / 1ps

module BCD_XS3_tb;

  // Inputs
  reg a;
  reg b;
  reg c;
  reg d;

  // Outputs
  wire w;
  wire x;
  wire y;
  wire z;

  // Instantiate the Unit Under Test (UUT)
  BCD_XS3 uut (
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .w(w), 
    .x(x), 
    .y(y), 
    .z(z)
  );

  initial begin
    // Initialize inputs
    a = 0; b = 0; c = 0; d = 0;

    // Apply test vectors
    #10; a = 0; b = 0; c = 0; d = 0;
    #10; a = 0; b = 0; c = 0; d = 1;
    #10; a = 0; b = 0; c = 1; d = 0;
    #10; a = 0; b = 0; c = 1; d = 1;
    #10; a = 0; b = 1; c = 0; d = 0;
    #10; a = 0; b = 1; c = 0; d = 1;
    #10; a = 0; b = 1; c = 1; d = 0;
    #10; a = 0; b = 1; c = 1; d = 1;
    #10; a = 1; b = 0; c = 0; d = 0;
    #10; a = 1; b = 0; c = 0; d = 1;
    #10; a = 1; b = 0; c = 1; d = 0;
    #10; a = 1; b = 0; c = 1; d = 1;
    #10; a = 1; b = 1; c = 0; d = 0;
    #10; a = 1; b = 1; c = 0; d = 1;
    #10; a = 1; b = 1; c = 1; d = 0;
    #10; a = 1; b = 1; c = 1; d = 1;
  end

  initial begin

    $monitor("At time %t: a = %b, b = %b, c = %b, d = %b -> w = %b, x = %b, y = %b, z = %b", 
             $time, a, b, c, d, w, x, y, z);
        #200 $finish;
  end

  initial begin
    $dumpfile("file.vcd");
    $dumpvars;
  end
endmodule
