Code Converters – Binary to/from Gray Code
Binary to Gray Code Converter

A Binary to Gray Code converter converts a binary number to its corresponding Gray Code. Gray Code is a binary numeral system where two successive values differ in only one bit. This is useful in error correction in digital communications and minimizes errors in digital logic circuits.
Conversion Formula

    The most significant bit (MSB) of the Gray Code is the same as the MSB of the binary number.
    Each subsequent bit of the Gray Code is obtained by XORing the corresponding bit and the bit to its left in the binary number.

For example, for a 4-bit binary number b3b2b1b0:

    gray[3] = binary[3]
    gray[2] = binary[3] ^ binary[2]
    gray[1] = binary[2] ^ binary[1]
    gray[0] = binary[1] ^ binary[0]

    Gray to Binary Code Converter

A Gray to Binary Code converter converts a Gray Code back to its corresponding binary number.
Conversion Formula

    The most significant bit (MSB) of the binary number is the same as the MSB of the Gray Code.
    Each subsequent bit of the binary number is obtained by XORing the corresponding bit of the Gray Code with the previously obtained binary bit.

For example, for a 4-bit Gray Code g3g2g1g0:

    binary[3] = gray[3]
    binary[2] = binary[3] ^ gray[2]
    binary[1] = binary[2] ^ gray[1]
    binary[0] = binary[1] ^ gray[0]

Applications

    Error Correction: Gray Code is used in digital communication systems to minimize errors when converting analog signals to digital, as only one bit changes at a time.
    Rotary Encoders: Gray Code is often used in rotary encoders to ensure accurate position information, avoiding errors during transitions.
