module concatenation(a,b,c,x,y);   // Module declaration with inputs a, b, c and outputs x, y
  input [31:0]a,b,c;               // Input declarations a, b, c are 32-bit wide
  output [31:0]x,y;                // Output declarations x, y are 32-bit wide
  
  assign x = {a,b};                // Concatenates inputs a and b to form output x
  assign y = {a,b,c};              // Concatenates inputs a, b, and c to form output y
  
endmodule                           // End of module
