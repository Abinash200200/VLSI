module shift_operator();

  reg [3:0] r_shift1 = 4'b0001; // Line 3: Declare a 4-bit register named r_shift1 and initialize it with the binary value 0001.

  initial
    begin
      $display("%b",r_shift1 << 1); // Line 7: Display the value of r_shift1 left shifted by 1 bit using the << operator.
      
      $display("%b",r_shift1 >> 2); // Line 9: Display the value of r_shift1 right shifted by 2 bits using the >> operator.
      
    end
endmodule
