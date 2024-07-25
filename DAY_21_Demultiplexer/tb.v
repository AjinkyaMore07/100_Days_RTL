// Code your testbench here
// or browse Examples

module demux_tb;
  reg a;
  reg [1:0] sel;
  wire [3:0] y;


  demultiplexer uut (
    .a(a),
    .sel(sel),
    .y(y)
  );

  initial begin

    a = 0;
    sel = 2'b00;


    #10 a = 1; sel = 2'b00; // Expect y = 0001
    #10 a = 1; sel = 2'b01; // Expect y = 0010
    #10 a = 1; sel = 2'b10; // Expect y = 0100
    #10 a = 1; sel = 2'b11; // Expect y = 1000
    #10 a = 0; sel = 2'b00; // Expect y = 0000
    #10 a = 0; sel = 2'b01; // Expect y = 0000
    #10 a = 0; sel = 2'b10; // Expect y = 0000
    #10 a = 0; sel = 2'b11; // Expect y = 0000
    

    #100 $finish;
  end

  initial begin
    // Monitor changes
    $monitor("Time = %0t, a = %b, sel = %b, y = %b", $time, a, sel, y);
    $dumpfile("file.vcd");
    $dumpvars;
  end

endmodule
