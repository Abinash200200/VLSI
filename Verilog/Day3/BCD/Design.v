module bcd2bin_struc (
    input [3:0] bcd3, bcd2, bcd1, bcd0, // Input BCD digits
    output reg [13:0] bin                // Output binary value
);

    // Instantiate four XOR gates
    xor x1 (bin[3], bcd3, bcd2);         // XOR gate for bit 3
    xor x2 (bin[2], bin[3], bcd1);       // XOR gate for bit 2
    xor x3 (bin[1], bin[2], bcd0);       // XOR gate for bit 1
    xor x4 (bin[0], bin[1], 0);          // XOR gate for bit 0

endmodule

