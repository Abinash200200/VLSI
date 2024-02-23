module mux_2x1 (
    input a, b, s,     // Line 2: Inputs a, b, and select signal s
    output y          // Line 3: Output y
);

  wire s1, c, c1;     // Line 6: Intermediate wires
  
  and and1(c, a, s1); // Line 8: AND gate to compute a AND s1
  and and2(c1, s, b); // Line 9: AND gate to compute s AND b
  not (s1, s);        // Line 10: NOT gate to compute the complement of s
  or (y, c, c1);      // Line 11: OR gate to compute the output y using c and c1

endmodule

