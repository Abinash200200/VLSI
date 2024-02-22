module orgate(
  input A,       // Input A
  input B,       // Input B
  output Y);     // Output Y
  
  or(Y, A, B);   // Perform logical OR operation on inputs A and B and assign the result to Y
  
endmodule
