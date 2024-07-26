// Code your testbench here
// or browse Examples
module tb;
  reg s,r,clk,reset;
  wire q;
  
  srff dut(s, r, clk, reset, q);
  
  initial begin
    clk=0;
    reset=1;
    repeat(5) @(posedge clk);
    reset = 0;
  end
  
  always #10 clk = ~clk;
  
  initial begin
    repeat(10) begin
    {s,r} = $urandom_range(0,3);
      @(posedge clk);
  	end
  end

  initial begin
    $dumpfile("file.vcd");
    $dumpvars;
    #200 $finish;
  end
  
endmodule
