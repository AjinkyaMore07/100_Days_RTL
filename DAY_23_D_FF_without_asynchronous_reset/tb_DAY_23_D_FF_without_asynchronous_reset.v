`timescale 1ns/1ps

module tb_D_FF_without_asynchronous_reset;

  reg d;
  reg clk;
  reg reset;
  wire q;

  D_FF_without_asynchronous_reset uut (
    .d(d),
    .clk(clk),
    .reset(reset),
    .q(q)
  );


  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end


  initial begin

    d = 0;
    reset = 0;

    // Apply reset
    #10 reset = 1;
    repeat(15) begin
      d = $urandom_range(0,1);
      #5;
    end
    
  end
  initial begin
   
    $dumpfile("file.vcd");
    $dumpvars;
    #200 $finish;
  end
  
endmodule
