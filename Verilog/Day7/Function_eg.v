module example;  // Declare a function 'fact' that takes two input integers 'a' and 'b' and returns an integer.
  function int fact(input int a, input int b);
    int result; // Declare a variable to hold the result
    begin
      result = a * b; // Calculate the product of 'a' and 'b' and store it in 'result'
      return result; // Return the result
    end
  endfunction 

  // Define an initial block to display the result of calling the 'fact' function.
  initial begin 
    $display("fact = %d", fact(5, 6)); // Call the 'fact' function with arguments 5 and 6 and display the result
  end

endmodule;
