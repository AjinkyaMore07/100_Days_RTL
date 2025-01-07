module tb_pattern_1010;
    reg in, clk, reset;
    wire q;

    // Instantiate the pattern detector
    pattern_1010 uut (
        .in(in),
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 ns clock period
    end
	integer i;
    // Test sequence
    initial begin
        reset = 1; in = 0;
        #10 reset = 0;

      for(i = 0; i<500 ; i = i+1)
      	begin
          in = $urandom();
          #10;
        end

        #50 $stop;
    end

    // Monitor output
    initial begin
        $monitor("Time: %0t | Reset: %b | Input: %b | Output q: %b", $time, reset, in, q);
      $dumpfile("file.vcd");
      $dumpvars;
    end
endmodule
