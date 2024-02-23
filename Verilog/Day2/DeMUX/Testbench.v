module demux_1x2_tb;
  reg s, a;                      // Define reg type for inputs s and a
  wire y0, y1;                   // Define wire type for outputs y0 and y1
  
  demux_1x2 dmx(                 // Instantiate demux_1x2 module
    .s(s),                       // Connect input s
    .a(a),                       // Connect input a
    .y0(y0),                     // Connect output y0
    .y1(y1)                      // Connect output y1
  );
  
 initial begin
   $dumpfile("demux_1x2.vcd");  // Specify dump file name for waveform simulation
   $dumpvars(0, demux_1x2_tb);  // Dump variables for waveform simulation
 end
  
  initial begin
    s = 1'b0;                    // Assign value to input s
    a = 1'b0;                    // Assign value to input a
    #10                          // Wait for 10 time units

    s = 1'b0;
    a = 1'b1;
    #10
    
    s = 1'b1;
    a = 1'b0;
    #10
    
    s = 1'b1;
    a = 1'b1;
    #10
    
   
    
    $finish;                     // Finish simulation
  end

  
  always @(*) begin
    $monitor("$time=%0t , s=%0b , a=%0b , y0=%0b , y1=%0b", $time, s, a, y0, y1);  // Monitor input and output values
  end
endmodule
