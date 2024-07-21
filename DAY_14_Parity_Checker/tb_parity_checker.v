module tb_parity_generator;
    reg [7:0] in;
    reg parity_in;
    wire error;

    parity_generator uut (
        .in(in),
        .parity_in(parity_in),
        .error(error)
    );

    initial begin
        // Apply test vectors
        in = 8'hAA; parity_in = 1;  // 1010 1010, calculated parity is 0, error detection should be 1
        #10 in = 8'h55; parity_in = 0;  // 0101 0101, calculated parity is 0, error detection should be 0
        #10 in = 8'hFF; parity_in = 0;  // 1111 1111, calculated parity is 0, error detection should be 0
        #10 in = 8'h00; parity_in = 1;  // 0000 0000, calculated parity is 0, error detection should be 1
        #10 in = 8'h0F; parity_in = 1;  // 0000 1111, calculated parity is 1, error detection should be 0
        #10 in = 8'hF0; parity_in = 0;  // 1111 0000, calculated parity is 1, error detection should be 1
    end

    initial begin
        // Dump waveforms for analysis
        $dumpfile("parity_generator.vcd");
        $dumpvars(0, tb_parity_generator);
    end

    initial begin
        // Monitor the input and output signals
        $monitor("in = %0b, parity_in = %0b, error = %0b", in, parity_in, error);
        #60 $finish;
    end
endmodule
