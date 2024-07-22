# Adder-Subtractor Verilog Module

## Overview

This project implements a 4-bit adder-subtractor module in Verilog. The module can perform both addition and subtraction operations on two 4-bit binary numbers, based on the value of the carry-in (`cin`) input.

## Module Descriptions

### `adder_substrator`

The `adder_substrator` module takes two 4-bit inputs (`a` and `b`) and a single-bit carry-in (`cin`). Depending on the value of `cin`, it either adds or subtracts the two inputs.

- **Inputs:**
  - `a` [3:0]: 4-bit binary number.
  - `b` [3:0]: 4-bit binary number.
  - `cin`: Carry-in (0 for addition, 1 for subtraction).

- **Outputs:**
  - `sum` [3:0]: 4-bit result of the addition or subtraction.
  - `carry`: Carry-out from the most significant bit.
 
  - 
