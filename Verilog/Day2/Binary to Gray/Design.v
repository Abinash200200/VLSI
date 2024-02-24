module Binary_to_Gray(
    input [3:0] b,     // 4-bit binary input
    output [3:0] g     // 4-bit Gray code output
);

    xor A1(g[0],b[1],b[0]);  // XOR gate for bit 0
    xor A2(g[1],b[2],b[1]);  // XOR gate for bit 1
    xor A3(g[2],b[3],b[2]);  // XOR gate for bit 2
    buf A4(g[3],b[3]);       // Buffer for bit 3

endmodule
