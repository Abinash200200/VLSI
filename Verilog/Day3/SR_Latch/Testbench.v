module sr_latch_tb;             // Module declaration for the testbench
  reg r, s;                      // Declaration of registers r and s
  wire q, q1;                    // Declaration of wires q and q1
  
sr_latch sr(.r(r), .s(s), .q(q), .q1(q1));   // Instantiation of the sr_latch module
  
 initial begin                  // Initial block for simulation setup
   $dumpfile("sr_latch.vcd");   // Line 8: Define VCD dump file
   $dumpvars(0, sr_latch_tb);   // Line 9: Dump variables for VCD
  
 end
  
  initial begin                // Another initial block for stimulus generation
    r = 1'b0;                   // Line 14: Set input r to 0
    s = 1'b0;                   // Line 15: Set input s to 0
    #10                          // Delay for 10 time units

    r = 1'b0;                   // Line 18: Set input r to 0
    s = 1'b1;                   // Line 19: Set input s to 1
    #10                          // Delay for 10 time units
    
    r = 1'b1;                   // Line 22: Set input r to 1
    s = 1'b0;                   // Line 23: Set input s to 0
    #10                          // Delay for 10 time units
    
    r = 1'b1;                   // Line 26: Set input r to 1
    s = 1'b1;                   // Line 27: Set input s to 1
    #10                          // Delay for 10 time units
   
    
    $finish;                     // Line 31: Finish simulation
  end

  
  always @(*) begin            // Continuous assignment block for monitoring
    $monitor("$time=%0t , s=%0b , r=%0b , q=%0b , q1=%0b", $time, s, r, q, q1);   // Line 35: Display monitored variables
  end
endmodule                       // End of module definition for the testbench
