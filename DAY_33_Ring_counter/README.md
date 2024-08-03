Ring Counter
A ring counter is a special type of application of the Serial IN Serial OUT Shift register. The only difference between the shift register and the ring counter is that the last flip flop outcome is taken as the output in the shift register. But in the ring counter, this outcome is passed to the first flip flop as an input. All of the remaining things in the ring counter are the same as the shift register.

In the Ring counter

No. of states in Ring counter = No. of flip-flop used

The right rotation logic {out[0], out[3:1]} works as follows:

The least significant bit (out[0]) becomes the most significant bit.
The most significant three bits (out[3:1]) are shifted to the right.
For example:

If out is 0001, after one clock cycle, it will be 1000.
If out is 1000, after one clock cycle, it will be 0100.
If out is 0100, after one clock cycle, it will be 0010.
If out is 0010, after one clock cycle, it will be 0001.
