module full_sub (
    input x, y, z,          // Inputs x, y, and borrow-in (z)
    output D, B             // Outputs difference (D) and borrow-out (B)
);

  wire a, a1, a2, b, x1;   // Declare intermediate wires
  
  xor xor1(a, x, y);       //  XOR gate to compute difference bit a
  xor xor2(D, z, a);       //  XOR gate to compute difference bit D using a and borrow-in z
  
  not not1(a, a1);         //  NOT gate to compute complement of a
  not not2(x1, y);         //  NOT gate to compute complement of y
  
  and and1(b, x1, y);      //  AND gate to compute carry out of y and borrow-in (z)
  and and2(a2, a1, z);     //  AND gate to compute borrow-out (B) using a1 and borrow-in (z)
  
  or or1(B, a2, b);        //  OR gate to compute final borrow-out (B) using a2 and b

endmodule

