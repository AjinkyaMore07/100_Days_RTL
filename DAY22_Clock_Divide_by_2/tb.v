
`timescale 1ns/1ps

module tb_divide_by_2;

    reg clk;
    reg reset;


    wire divideby2;


    divide_by_2 uut (
        .clk(clk),
        .reset(reset),
        .divideby2(divideby2)
    );


    always #5 clk = ~clk; // 10ns period -> 100MHz clock

    initial begin

        clk = 0;
        reset = 0;
      #15;
      reset = 1;
      #100;
        $stop;
    end

    initial begin
        // Monitor changes
        $monitor("Time=%0t, clk=%b, reset=%b, divideby2=%b", $time, clk, reset, divideby2);
      $dumpfile("file.vcd");
      $dumpvars;
    end

endmodule
