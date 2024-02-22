module allgates(a,b,c,d,e,f,g,h,i);
// Module declaration with inputs (a,b) and outputs (c,d,e,f,g,h,i)

  input a,b;              // Declaring inputs a and b
  output c,d,e,f,g,h,i;   // Declaring outputs c, d, e, f, g, h, i
  or (c,a,b);             // Line 6: OR gate: Output c is the result of a OR b
  and (d,a,b);            // Line 7: AND gate: Output d is the result of a AND b
  not (e,a);              // Line 8: NOT gate: Output e is the complement of a
  nand (f,a,b);           // Line 9: NAND gate: Output f is the result of a NAND b
  nor (g,a,b);            // Line 10: NOR gate: Output g is the result of a NOR b
  xor (h,a,b);            // Line 11: XOR gate: Output h is the result of a XOR b
  xnor (i,a,b);           // Line 12: XNOR gate: Output i is the result of a XNOR b

endmodule

