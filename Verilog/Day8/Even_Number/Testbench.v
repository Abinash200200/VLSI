module even_number_tb;                      // Module declaration for testbench
  reg [31:0]num;                            // Declare a 32-bit wide register num
  even_number uut(.num(num));               // Instantiate the even_number module with num
  
  initial begin                             // Initial block starts
    num=7;                                  // Initialize num with value 7
    #10                                     // Wait for 10 time units
    $finish();                              // Finish simulation
  end                                       // End of initial block
  
  initial begin                            // Another initial block starts
    $monitor("%t num=%d",$time,num);       // Monitor the value of num and time
  end                                      // End of initial block
endmodule                                  // End of module
