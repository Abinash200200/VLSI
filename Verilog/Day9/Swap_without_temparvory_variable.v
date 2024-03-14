module swap_without_tempravory_variable; // Line 1: Module declaration.

  int x=5,y=4; // Line 3: Declare two integer variables x and y and initialize them with values 5 and 4, respectively.

  initial begin // Line 5: Begin initial block.

     x = x + y; // Line 7: Swap values of x and y without using a temporary variable.
     y = x - y; // Line 8: Swap values of x and y without using a temporary variable.
     x = x - y; // Line 9: Swap values of x and y without using a temporary variable.

    $display("the values of  x=%d y=%d",x,y); // Line 11: Display the values of x and y after swapping.
  end
  
endmodule
