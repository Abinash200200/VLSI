module half_sub (
  input a,      // Input a
  input b,      // Input b
  output D,     // Output difference (D)
  output B      // Output borrow (B)
);
  
  wire b1;      // Intermediate wire to store the complement of b
  xor xor1(D, a, b); //  XOR gate to compute the difference (D) between a and b
  not not1(b1, b); // NOT gate to compute the complement of b
  and and1(B, a, b1);// AND gate to compute the borrow (B) using a and the complement of b (b1)
  
endmodule

