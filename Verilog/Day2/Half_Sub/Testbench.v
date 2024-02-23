module half_sub_tb;
  reg a, b;          // Define reg type for inputs a and b
  wire D, B;         // Define wire type for outputs D and B
  
  half_sub hs(       // Instantiate half_sub module
    .a(a),           // Connect input a
    .b(b),           // Connect input b
    .D(D),           // Connect output difference (D)
    .B(B)            // Connect output borrow (B)
  );
  
 initial begin
   $dumpfile("half_sub.vcd");  // Specify dump file name for waveform simulation
   $dumpvars;                   // Dump variables for waveform simulation
 end
  
  initial begin
    a = 1'b0;    // Assign value to input a
    b = 1'b0;    // Assign value to input b
    #10          // Wait for 10 time units
    
    a = 1'b0;    // Assign value to input a
    b = 1'b1;    // Assign value to input b
    #10          // Wait for 10 time units
    
    a = 1'b1;    // Assign value to input a
    b = 1'b0;    // Assign value to input b
    #10          // Wait for 10 time units
    
    a = 1'b1;    // Assign value to input a
    b = 1'b1;    // Assign value to input b
    #10          // Wait for 10 time units
    
    $finish;     // Finish simulation
  end

  
  always @(*) begin
    $monitor("$time=%0t , a=%0b , b=%0b , D=%0D , B=%0B" ,$time, a, b, D, B);  // Monitor input and output values
  end
endmodule
