`timescale 1ms/1ms

module tb;
  reg clk,en,reset;
  wire [5:0]q;
  
  freq_cal dut(en,clk,reset,q);
  
  always #2 clk = ~clk;  
  initial begin
    clk = 0;
    reset = 1;
    #20 reset = 0;
    #6 en = 1;
    #1000 en = 0;
    #20 $finish;
  end
  
  initial begin
    $monitor("Time = %0t , clk = %0b , en = %0b , reset = %0b , q = %0d",$time,clk,en,q);
    $dumpfile("file.vcd");
    $dumpvars(0,tb);
  end
endmodule
