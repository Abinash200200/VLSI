module fnt;
  //output x;
  
  // Function declaration
  function int fn(
           input int a,b);
    begin 
      fn = a + b;
    end
  endfunction
  
  // Initial block for monitoring the function
  initial 
    $monitor("fn", fn(100,100));
endmodule // End of module
