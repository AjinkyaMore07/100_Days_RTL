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

    // Test sequence
    initial begin
        reset = 1; in = 0;
        #10 reset = 0;

        // Apply input sequence
        #10 in = 1; // Input: 1
        #10 in = 0; // Input: 0
        #10 in = 1; // Input: 1
        #10 in = 0; // Input: 0 (Output q should go high here)

        #10 in = 1; // Input: 1
        #10 in = 1; // Input: 1 (Random input)
        #10 in = 0; // Input: 0 (FSM resets to detect "1010" again)

        #50 $stop;
    end

    // Monitor output
    initial begin
        $monitor("Time: %0t | Reset: %b | Input: %b | Output q: %b", $time, reset, in, q);
      $dumpfile("file.vcd");
      $dumpvars;
    end
endmodule
