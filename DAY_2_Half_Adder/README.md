# Half Adder in Verilog


## Overview

The `ha` module implements a Half Adder, a fundamental digital circuit that adds two single-bit binary numbers. It produces a sum and a carry-out output.

## Files

- `ha.v`: Verilog module for the Half Adder.
- `tb_ha.v`: Testbench for the Half Adder module.

## Module Description

### Half Adder (`ha`)

#### Ports

- **Inputs**
  - `a`: Input bit A
  - `b`: Input bit B

- **Outputs**
  - `sum`: Sum of inputs A and B
  - `carry`: Carry-out of the addition

#### Functionality

The Half Adder calculates the sum and carry-out for two single-bit binary inputs. The `sum` is computed using XOR operation, and the `carry` is computed using AND operation.

## Testbench Description

The testbench (`tb_ha`) applies the following combinations of inputs to the `ha` module:

1. `a = 0`, `b = 0`
2. `a = 0`, `b = 1`
3. `a = 1`, `b = 0`
4. `a = 1`, `b = 1`

It displays the values of `sum` and `carry` for each input combination and generates a waveform file for visualization.


a b | sum carry
0 0 | 0   0
0 1 | 1   0
1 0 | 1   0
1 1 | 0   1

