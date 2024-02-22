module half_adder(
  input A,            // Input A
  input B,            // Input B
  output sum,         // Output sum
  output carry);      // Output carry
  
  and(carry, A, B);   // Generate the carry output using an AND gate
  xor(sum, A, B);     // Generate the sum output using an XOR gate
  
endmodule
