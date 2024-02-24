module Gray_to_Binary(
    input [3:0] g,       // Input Gray code signal
    output [3:0] b       // Output binary signal
);

    xor A1(b[0], b[1], g[0]);   // XOR gate for bit 0
    xor A2(b[1], b[2], g[1]);   // XOR gate for bit 1
    xor A3(b[2], b[3], g[2]);   // XOR gate for bit 2
    buf A4(b[3], g[3]);         // Buffer for bit 3

endmodule
