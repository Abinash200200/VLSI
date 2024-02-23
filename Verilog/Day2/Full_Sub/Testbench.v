module full_sub_tb;
  reg x, y, z;          // Define reg type for inputs x, y, and borrow-in (z)
  wire D, B;            // Define wire type for outputs difference (D) and borrow-out (B)
  
  full_sub hs(          // Instantiate full_sub module
    .x(x),              // Connect input x
    .y(y),              // Connect input y
    .z(z),              // Connect input borrow-in (z)
    .D(D),              // Connect output difference (D)
    .B(B)               // Connect output borrow-out (B)
  );
  
 initial begin
   $dumpfile("full_sub.vcd");  // Specify dump file name for waveform simulation
   $dumpvars(0, full_sub_tb);  // Dump variables for waveform simulation
 end
  
  initial begin
    x = 1'b0;    // Assign value to input x
    y = 1'b0;    // Assign value to input y
    z = 1'b0;    // Assign value to input borrow-in (z)
    #10          // Wait for 10 time units
    
    x = 1'b0;    // Assign value to input x
    y = 1'b0;    // Assign value to input y
    z = 1'b1;    // Assign value to input borrow-in (z)
    #10          // Wait for 10 time units
    
    x = 1'b0;    // Assign value to input x
    y = 1'b1;    // Assign value to input y
    z = 1'b0;    // Assign value to input borrow-in (z)
    #10          // Wait for 10 time units

    x = 1'b0;    // Assign value to input x
    y = 1'b1;    // Assign value to input y
    z = 1'b1;    // Assign value to input borrow-in (z)
    #10          // Wait for 10 time units
    
    x = 1'b1;    // Assign value to input x
    y = 1'b0;    // Assign value to input y
    z = 1'b0;    // Assign value to input borrow-in (z)
    #10          // Wait for 10 time units

    x = 1'b1;    // Assign value to input x
    y = 1'b0;    // Assign value to input y
    z = 1'b1;    // Assign value to input borrow-in (z)
    #10          // Wait for 10 time units

    x = 1'b1;    // Assign value to input x
    y = 1'b1;    // Assign value to input y
    z = 1'b0;    // Assign value to input borrow-in (z)
    #10          // Wait for 10 time units

    x = 1'b1;    // Assign value to input x
    y = 1'b1;    // Assign value to input y
    z = 1'b1;    // Assign value to input borrow-in (z)
    #10          // Wait for 10 time units

    
    $finish;     // Line 39: Finish simulation
  end

  
  always @(*) begin
    $monitor("$time=%0t , x=%0b , y=%0b , z=%0b , D=%0b , B=%0b" ,$time, x, y, z, D, B);  // Line 42: Monitor input and output values
  end
endmodule

