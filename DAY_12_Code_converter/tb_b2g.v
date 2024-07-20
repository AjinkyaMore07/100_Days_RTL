module tb_b2g;
    reg [3:0] in;
    wire [3:0] out;
    
    // Instantiate the Binary to Gray code converter
    b2g uut (
        .in(in),
        .out(out)
    );
    
    initial begin
        // Dump the waveform to a file
        $dumpfile("b2g.vcd");
        $dumpvars(0, tb_b2g);
        
      $monitor("in = %0b , out = %0b ",in,out);
        // Apply test vectors
        in = 4'b0000; #10; // Binary 0 -> Gray 0000
        in = 4'b0001; #10; // Binary 1 -> Gray 0001
        in = 4'b0010; #10; // Binary 2 -> Gray 0011
        in = 4'b0011; #10; // Binary 3 -> Gray 0010
        in = 4'b0100; #10; // Binary 4 -> Gray 0110
        in = 4'b0101; #10; // Binary 5 -> Gray 0111
        in = 4'b0110; #10; // Binary 6 -> Gray 0101
        in = 4'b0111; #10; // Binary 7 -> Gray 0100
        in = 4'b1000; #10; // Binary 8 -> Gray 1100
        in = 4'b1001; #10; // Binary 9 -> Gray 1101
        in = 4'b1010; #10; // Binary 10 -> Gray 1111
        in = 4'b1011; #10; // Binary 11 -> Gray 1110
        in = 4'b1100; #10; // Binary 12 -> Gray 1010
        in = 4'b1101; #10; // Binary 13 -> Gray 1011
        in = 4'b1110; #10; // Binary 14 -> Gray 1001
        in = 4'b1111; #10; // Binary 15 -> Gray 1000
        
        // Finish simulation
        #100 $finish;
    end
    
endmodule
