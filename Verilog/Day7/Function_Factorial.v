module function_tb; // Declare an automatic function 'factorial' with an 8-bit width output.
  function automatic [7:0] factorial;
    input [7:0] i; // Declare an 8-bit input 'i'
    begin
      if (i == 1)
        factorial = 1; // Base case: if 'i' equals 1, factorial is 1
      else
        factorial = i * factorial(i - 1); // Recursively calculate factorial
    end
  endfunction

  // Define an initial block to display the result of calling the 'factorial' function.
  initial begin
    $display("factorial of 5 = %d", factorial(5)); // Call 'factorial' function with argument 5 and display the result
  end

endmodule;
