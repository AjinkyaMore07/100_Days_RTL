Fundamentals

    BCD Representation: Each decimal digit (0-9) is represented by a 4-bit binary number.
    Excess-3 Code: Each decimal digit is represented by its BCD equivalent plus 3 (0011 in binary).

Truth Table for BCD to Excess-3 Conversion

Here's the truth table for BCD to Excess-3 conversion:
BCD (A B C D)	Decimal	Excess-3 (w x y z)
0000	0	0011
0001	1	0100
0010	2	0101
0011	3	0110
0100	4	0111
0101	5	1000
0110	6	1001
0111	7	1010
1000	8	1011
1001	9	1100
1010 to 1111	-	XXXX (Don't Care)
Deriving the Boolean Equations

We can derive the Boolean equations for each bit of the Excess-3 code (w, x, y, z) by examining the truth table and using Karnaugh maps (K-maps) for simplification.
Using K-maps for Simplification

z (LSB)

   CD
   00  01  11  10
AB
00  1   1   X   X
01  0   0   1   1
11  X   X   X   X
10  X   X   X   X

The simplified expression for z is:
z=D‾z=D

y

   CD
   00  01  11  10
AB
00  1   0   X   X
01  1   0   1   1
11  X   X   X   X
10  X   X   X   X

The simplified expression for y is:
y=C⊕Dy=C⊕D

x

   CD
   00  01  11  10
AB
00  0   1   X   X
01  1   1   0   0
11  X   X   X   X
10  X   X   X   X

The simplified expression for x is:
x=(B‾⋅C)+(B‾⋅D)+(B⋅C‾⋅D‾)x=(B⋅C)+(B⋅D)+(B⋅C⋅D)

w (MSB)

   CD
   00  01  11  10
AB
00  0   0   X   X
01  0   0   1   1
11  X   X   X   X
10  X   X   X   X

The simplified expression for w is:
w=A+(B⋅C)+(B⋅D)w=A+(B⋅C)+(B⋅D)
