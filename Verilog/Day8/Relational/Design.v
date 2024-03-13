module Relational (A, B, Y1, Y2, Y3, Y4);  // Line 1: Module declaration with inputs A, B, and outputs Y1, Y2, Y3, Y4
  input [2:0] A, B;                         // Line 2: Input ports A and B, each 3 bits wide
  output reg Y1, Y2, Y3, Y4;                // Line 3: Output registers Y1, Y2, Y3, Y4
  
  always @(A or B) begin                    // Line 5: Sensitivity list for the always block, executes when A or B change
    Y1 = A < B;                             // Line 6: Assigns Y1 as the result of A < B (less than)
    Y2 = A <= B;                            // Line 7: Assigns Y2 as the result of A <= B (less than or equal)
    Y3 = A > B;                             // Line 8: Assigns Y3 as the result of A > B (greater than)
    Y4 = A >= B;                            // Line 9: Assigns Y4 as the result of A >= B (greater than or equal)
  end
  
endmodule
