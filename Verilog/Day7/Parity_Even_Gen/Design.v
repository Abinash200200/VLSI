module parity_even_gen(
  input a, b, c,
  output z);
  
  wire d; // Declare a wire 'd' for intermediate signal
  
  xor(d, a, b); //  XOR gate with inputs 'a' and 'b', output connected to 'd'
  xor(z, d, c); //  XOR gate with inputs 'd' and 'c', output connected to 'z'
  
endmodule
