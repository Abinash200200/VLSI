module exponent_tb;                  // Module declaration for the testbench
  reg [7:0] A, B;                    // Input registers A and B, both 8 bits wide
  wire [32:0] C;                     // Output wire C, 33 bits wide
  exponent exp(.A(A), .B(B), .C(C)); // Instantiation of the exponent module with connections

  initial begin                      // Initial block for stimulus generation
    A = 9;                          // Assigning value 9 to input A
    B = 4;                          // Assigning value 4 to input B
    #10                             // Delay of 10 time units
    A = 3;                       
    B = 3;                       
    #10                          
    A = 5;                       
    B = 6;                       
    #10                         
    $finish();                      // Finishing simulation
  end

  initial begin                      // Initial block for dumping waveform and monitoring signals
    $monitor("%t A=%d B=%d C=%d", $time, A, B, C); // Monitoring A, B, and C and printing their values
    $dumpfile("exponent.vcd");      // Output waveform filename
    $dumpvars(1, exponent_tb);      // Dumping variables for waveform
  end

endmodule                           // End of module declaration
