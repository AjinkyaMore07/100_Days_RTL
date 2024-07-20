module tb_g2b;
    reg [3:0] in;
    wire [3:0] out;
    
    // Instantiate the Gray to Binary code converter
    g2b uut (
        .in(in),
        .out(out)
    );
    
    initial begin
        // Dump the waveform to a file
        $dumpfile("g2b.vcd");
        $dumpvars(0, tb_g2b);
    end 
   initial begin
        // Monitor input and output
        $monitor("Time = %0t | in = %0b | out = %0b", $time, in, out);
        
        // Apply test vectors
        in = 4'b0000; #10; // Gray 0000 -> Binary 0000
        in = 4'b0001; #10; // Gray 0001 -> Binary 0001
        in = 4'b0011; #10; // Gray 0011 -> Binary 0010
        in = 4'b0010; #10; // Gray 0010 -> Binary 0011
        in = 4'b0110; #10; // Gray 0110 -> Binary 0100
        in = 4'b0111; #10; // Gray 0111 -> Binary 0101
        in = 4'b0101; #10; // Gray 0101 -> Binary 0110
        in = 4'b0100; #10; // Gray 0100 -> Binary 0111
        in = 4'b1100; #10; // Gray 1100 -> Binary 1000
        in = 4'b1101; #10; // Gray 1101 -> Binary 1001
        in = 4'b1111; #10; // Gray 1111 -> Binary 1010
        in = 4'b1110; #10; // Gray 1110 -> Binary 1011
        in = 4'b1010; #10; // Gray 1010 -> Binary 1100
        in = 4'b1011; #10; // Gray 1011 -> Binary 1101
        in = 4'b1001; #10; // Gray 1001 -> Binary 1110
        in = 4'b1000; #10; // Gray 1000 -> Binary 1111
   end 
  
  	initial begin
  // Finish simulation
        #100 $finish;
    end
    
endmodule
