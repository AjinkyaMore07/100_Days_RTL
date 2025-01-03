module tb_johnson_Counter;
    reg clk;
    reg reset;
    wire [3:0] q;

    // Instantiate the Johnson counter
    johnson_Counter uut (
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
        reset = 1;      // Reset the counter
        #15 reset = 0;  // Release reset

        #100 $stop;     // Stop simulation
    end

    // Monitor output
    initial begin
        $monitor("Time: %0t | Reset: %b | Q: %b", $time, reset, q);
    end
endmodule
