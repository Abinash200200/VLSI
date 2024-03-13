module even_number(                      // Module declaration named even_number
  input  [31:0]num);                    // Input port num, 32-bit wide

always @(*)                             // Always block sensitive to any change in input
  begin
    if(num%2==0)                        // Condition to check if num is divisible by 2
       $display("The number is a even number",num);  // Display message if num is even
    else
      $display("The number is a odd number",num);    // Display message if num is odd
   end 
endmodule                               // End of module
