
module tb;
  reg a1,a0,b1,b0;
  wire E,L,G;
  
  comparator dut(a0,a1,b0,b1,E,L,G);
  
  
  initial begin
    repeat(10) begin
    	{a1,a0} = $urandom_range(0,3);
    	{b1,b0} = $urandom_range(0,3);
    		#5;
    end
  end
  initial begin
    $dumpfile("file.vcd");
    $dumpvars;
  end
  
  
  initial begin
   #100 $finish;
  end
endmodule
