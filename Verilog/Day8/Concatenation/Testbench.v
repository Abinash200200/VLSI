module concatenation_tb;                            // Module declaration for testbench
  reg [31:0]a,b,c;                                 // Declare 32-bit wide registers a, b, c
  wire [31:0] x,y;                                 // Declare 32-bit wide wires x, y
  
  concatenation thh(.a(a), .b(b), .c(c), .x(x), .y(y));  // Instantiate the module concatenation
  
  initial begin                                    // Initial block starts
    $dumpfile("concatenation.vcd");               // Define the VCD dump file
    $dumpvars();                                   // Dump all variables
    
  end                                              // End of initial block
  
  initial                                          // Another initial block starts
  begin                                            // Begin block
    
    a=3'b000;                                      // Assign value to a
    
    b=4'b0010;                                     // Assign value to b
    
    c=2'b11;                                       // Assign value to c
    
    $monitor("$time=%t a=%d b=%d c=%d x=%d y=%d",$time, a, b, c, x, y);  // Monitor the values of variables and time
  end                                              // End block
endmodule                                          // End of module
