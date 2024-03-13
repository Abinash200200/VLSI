module exponent(            // Line 1: Module declaration
  input [7:0] A, B,         // Line 2: Input ports A and B, both 8 bits wide
  output reg [32:0] C       // Line 3: Output port C, 33 bits wide, declared as a register
);

  always @ (*) begin        // Line 6: Continuous assignment block, triggered whenever inputs change
    C = A ** B;             // Line 7: Exponential operation, C is assigned the result of A raised to the power of B
  end                        // Line 8: End of the always block

endmodule                    // Line 10: End of module declaration
