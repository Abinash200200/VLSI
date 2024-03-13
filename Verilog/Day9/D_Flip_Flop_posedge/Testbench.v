module d_flip_flop_posedge_tb;          // Module declaration for the testbench
  reg clk, d;                           // Input registers clk and d
  wire q;                               // Output wire q
  d_flip_flop_posedge uut(              // Instantiation of the D flip-flop module with connections
    .clk(clk), .d(d), .q(q)
  );

  initial begin                        // Initial block for stimulus generation
    clk = 0;                          // Initializing clock to 0
    #5                               // Delay of 5 time units
    d = 0;                            // Assigning value 0 to input d
    #200                             // Delay of 200 time units
    $finish();                       // Finishing simulation
  end

  initial begin                        // Initial block for dumping waveform and monitoring signals
    $monitor("clk=%d d=%d q=%d", clk, d, q); // Monitoring clk, d, and q and printing their values
    $dumpfile("d_flip_flop_posedge.vcd"); // Output waveform filename
    $dumpvars(1, d_flip_flop_posedge_tb); // Dumping variables for waveform
  end

  always #5 clk = ~clk;               // Clock toggling every 5 time units
  always #60 d = ~d;                   // Input d toggling every 60 time units
endmodule                              // End of module declaration
