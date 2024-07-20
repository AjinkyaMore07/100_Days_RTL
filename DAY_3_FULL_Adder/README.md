# Full Adder in Verilog

## Overview

The `Fa` module implements a Full Adder, a fundamental digital circuit that adds three single-bit binary numbers. It produces a sum and a carry-out output.

## Files

- `Fa.v`: Verilog module for the Full Adder.
- `tb_Fa.v`: Testbench for the Full Adder module.

## Module Description

### Full Adder (`Fa`)

#### Ports

- **Inputs**
  - `a_in`: Input bit A
  - `b_in`: Input bit B
  - `c_in`: Carry-in bit

- **Outputs**
  - `sum`: Sum of inputs A, B, and C
  - `carry`: Carry-out of the addition

#### Functionality

The Full Adder calculates the sum and carry-out for three single-bit binary inputs. The `sum` is computed using XOR operation, and the `carry` is computed using AND and OR operations.

## Testbench Description

The testbench (`tb_Fa`) applies the following combinations of inputs to the `Fa` module:

1. `a_in = 0`, `b_in = 0`, `c_in = 0`
2. `a_in = 0`, `b_in = 0`, `c_in = 1`
3. `a_in = 0`, `b_in = 1`, `c_in = 0`
4. `a_in = 0`, `b_in = 1`, `c_in = 1`
5. `a_in = 1`, `b_in = 0`, `c_in = 0`
6. `a_in = 1`, `b_in = 0`, `c_in = 1`
7. `a_in = 1`, `b_in = 1`, `c_in = 0`
8. `a_in = 1`, `b_in = 1`, `c_in = 1`

It displays the values of `sum` and `carry` for each input combination and generates a waveform file for visualization.

a_in b_in c_in | sum carry
0    0    0    | 0   0
0    0    1    | 1   0
0    1    0    | 1   0
0    1    1    | 0   1
1    0    0    | 1   0
1    0    1    | 0   1
1    1    0    | 0   1
1    1    1    | 1   1
