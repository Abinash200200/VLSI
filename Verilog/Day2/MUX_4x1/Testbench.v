module mux_4x1_tb;
  reg d0, d1, d2, d3, s0, s2;      //  Define reg type for inputs d0, d1, d2, d3, s0, and s2
  wire z;                           // Define wire type for output z
  
  mux_4x1 mx(                       // Instantiate mux_4x1 module
    .d0(d0),                        // Connect input d0
    .d1(d1),                        // Connect input d1
    .d2(d2),                        // Connect input d2
    .d3(d3),                        // Connect input d3
    .s0(s0),                        // Connect input s0
    .s2(s2),                        // Connect input s2
    .z(z)                          //  Connect output z
  );
  
 initial begin
   $dumpfile("mux_4x1.vcd");        // Specify dump file name for waveform simulation
   $dumpvars(0, mux_4x1_tb);        // Dump variables for waveform simulation
 end
  
  initial begin
    d0 = 1'b1;                      // Assign value to input d0
    d1 = 1'b0;                      // Assign value to input d1
    d2 = 1'b0;                      // Assign value to input d2
    d3 = 1'b0;                      // Assign value to input d3
    s0 = 1'b0;                      // Assign value to input s0
    s2 = 1'b0;                      // Assign value to input s2
    #10                             // Wait for 10 time units

    d0=1'b0;
    d1=1'b1;
    d2=1'b1;
    d3=1'b0;
    s0=1'b0;
    s2=1'b1;
    #10
    
    d0=1'b0;
    d1=1'b1;
    d2=1'b0;
    d3=1'b0;
    s0=1'b1;
    s2=1'b0;
    #10
    
    d0=1'b1;
    d1=1'b0;
    d2=1'b1;
    d3=1'b0;
    s0=1'b1;
    s2=1'b1;
    #10
    
  
    
    $finish;                        // Finish simulation
  end

  
  always @(*) begin
    $monitor("$time=%0t , d0=%0b , d1=%0b , d2=%0b , d3=%0b , s0=%0b , s2=%0b, z=%0b"  ,$time, d0, d1, d2, d3, s0, s2, z);  // Monitor input and output values
  end
endmodule
