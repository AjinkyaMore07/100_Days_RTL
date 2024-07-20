# 2x4 Decoder in Verilog


## Advantages of Decoders

- **Simple Design**: Easy to design and implement.
- **Multiple Outputs**: Generates multiple outputs from fewer inputs.
- **Flexibility**: Useful in various applications like memory address decoding and data demultiplexing.
- **Expandability**: Can be combined to handle more inputs and outputs.
- **Compatibility**: Works well with other digital components.

## Applications of Decoders

- **Memory Address Decoding**: Selecting memory locations in memory devices.
- **Data Demultiplexing**: Distributing data from one line to multiple lines.
- **Seven-Segment Displays**: Driving seven-segment displays in digital devices.
- **Instruction Decoding**: Decoding instruction codes in CPUs and microcontrollers.
- **PLC and Control Systems**: Signal routing and decision making in control systems.
  
Here's a brief explanation of the code:

    Inputs and Outputs:
        a, b: 2-bit input.
        enable: Enables the decoder.
        y0, y1, y2, y3: 4-bit output.

    Intermediate Wires:
        w1: Inverted a.
        w2: Inverted b.

    Gates:
        not g1(w1, a): Inverts a.
        not g2(w2, b): Inverts b.
        and g3(y0, w1, w2, enable): y0 is high when a and b are both low and enable is high.
        and g4(y1, w1, b, enable): y1 is high when a is low and b is high and enable is high.
        and g5(y2, a, w2, enable): y2 is high when a is high and b is low and enable is high.
        and g6(y3, a, b, enable): y3 is high when a and b are both high and enable is high.
