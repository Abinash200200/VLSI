module mux_2x1_tb;
  reg a, b, s;        // Define reg type for inputs a, b, and select signal s
  wire y;             // Define wire type for output y
  
  mux_2x1 mx(.a(a), .b(b), .s(s), .y(y));
  
 initial begin
   $dumpfile("mux_2x1.vcd");  // Specify dump file name for waveform simulation
   $dumpvars(0, mux_2x1_tb);  // Dump variables for waveform simulation
 end
  
  initial begin
    a = 1'b0;    // Assign value to input a
    b = 1'b0;    // Assign value to input b
    s = 1'b0;    // Assign value to input select signal s
    #10          // Wait for 10 time units
    
    a=1'b0;
    b=1'b0;
    s=1'b1;
    #10
    
    a=1'b0;
    b=1'b1;
    s=1'b0;
    #10 
    
    a=1'b0;
    b=1'b1;
    s=1'b1;
    #10 
    
    a=1'b1;
    b=1'b0;
    s=1'b0;
    #10
    
    a=1'b1;
    b=1'b0;
    s=1'b1;
    #10 
    
    a=1'b1;
    b=1'b1;
    s=1'b0;
    #10 
    
    a=1'b1;
    b=1'b1;
    s=1'b1;
    #10
    
    $finish;     // Finish simulation
  end

  
  always @(*) begin
    $monitor("$time=%0t , a=%0b , b=%0b , s=%0b , y=%0b" ,$time, a, b, s, y);  // Monitor input and output values
  end
endmodule

