# 4-to-2  Encoder

This repository contains the Verilog implementation of a 4-to-2 priority encoder along with its testbench.

## Overview

### What is an Encoder?

An encoder is a digital circuit that converts a set of binary inputs into a unique binary code. The binary code represents the position of the input and is used to identify the specific input that is active. Encoders are commonly used in digital systems to convert parallel sets of inputs into a serial code.

### Types of Encoders

There are different types of encoders, including:

1. **Priority Encoders**: Assign a priority to each input, and if multiple inputs are active, the encoder will output the binary code of the highest-priority input.
2. **Binary-Weighted Encoders**: Use a binary weighting system to assign binary codes to inputs based on their positions.

### Functionality of an Encoder

An encoder is a combinational circuit that performs the reverse operation of a decoder. It has a maximum of \(2^n\) input lines and \(n\) output lines, encoding information from \(2^n\) inputs into an \(n\)-bit code. The encoder produces a binary code equivalent to the active High input. Therefore, the encoder encodes \(2^n\) input lines into \(n\) bits.
