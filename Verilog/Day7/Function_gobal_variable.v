module global_variable;  // Declare a global variable 'i'.
  int i;  //  Declare a function 'calling' that takes two input integers 'a' and 'b'.
  function calling(input int a, b);
    begin
      i = a * b; // Assign the product of 'a' and 'b' to the global variable 'i'.
    end
  endfunction

  //  Define an initial block to call the 'calling' function and display the value of the global variable 'i'.
  initial begin
    calling(4, 5); // Call the 'calling' function with arguments 4 and 5.
    $display("i = %d", i); // Display the value of the global variable 'i'.
  end

endmodule;
