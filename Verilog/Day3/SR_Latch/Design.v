module sr_latch(r, s, q, q1);   // Module declaration with input and output ports
  input r, s;                    // Declaration of input ports r and s
  output q, q1;                  // Declaration of output ports q and q1
  
  nand (q, r, q1);               // NAND gate implementation for q output
  nand (q1, s, q);               // NAND gate implementation for q1 output
  
endmodule                         // End of module definition
