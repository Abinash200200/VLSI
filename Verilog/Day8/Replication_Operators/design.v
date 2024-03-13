module Replication(
  input [2:0] A, B,            // Inputs A and B, each 3 bits wide
  output reg [15:0] y1,        // Output y1, 16 bits wide
  output reg [31:0] y2         // Output y2, 32 bits wide
);
  
  always @* begin              // Combinational logic, executed whenever inputs change
    
    y1 = {4{A}};                // Line 8: Replicate A four times and assign to y1
    
    y2 = {2{A, B}};            // Line 10: Concatenate A and B, replicate the result twice, and assign to y2
    
  end
  
endmodule
