
module tb_water_level_indicator;

   reg [7:0] level;


  wire full, half, empty;


  water_level_indicator uut (
    .level(level), 
    .full(full), 
    .half(half), 
    .empty(empty)
  );

  initial begin

    level = 8'b00000000;


    #10;

    level = 8'b00000001; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    level = 8'b00000010; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    level = 8'b00000100; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    level = 8'b00001000; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    level = 8'b00010000; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    level = 8'b00100000; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    level = 8'b01000000; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    level = 8'b10000000; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    level = 8'b00000000; #10;
    $display("Level: %b -> Full: %b, Half: %b, Empty: %b", level, full, half, empty);

    $finish;
    // Finish simulation
  end
  
  initial begin
    $dumpfiles("files.vcd");
    $dumpvars;
  end
      
endmodule
