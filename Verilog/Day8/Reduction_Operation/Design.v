module Reduction_operator(
  input [3:0] A,                 // Line 4-bit wide input A
  output reg y1, y2, y3, y4, y5, y6); // Line Output registers y1 to y6

  always @(*)                     // Line Continuous assignment block, triggered by any change in input A
    begin 
      y1 = &A;                    // Line Assigns y1 as the result of bitwise AND reduction of A
      y2 = ~&A;                   // Line Assigns y2 as the negation of bitwise AND reduction of A
      y3 = |A;                    // Line Assigns y3 as the result of bitwise OR reduction of A
      y4 = ~|A;                   // Line Assigns y4 as the negation of bitwise OR reduction of A
      y5 = ^A;                    // Line Assigns y5 as the result of bitwise XOR reduction of A
      y6 = ~^A;                   // Line Assigns y6 as the negation of bitwise XOR reduction of A
    end

endmodule 
