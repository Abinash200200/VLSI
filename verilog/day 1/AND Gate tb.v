module andgate_tb;
  reg A, B;        // Input registers A and B
  wire Y;          // Output wire Y
  
  andgate tt(.A(A), .B(B), .Y(Y));  // Instantiate AND gate module
  
  initial begin
    $dumpfile("andgate.vcd");    // Specify VCD file for waveform dumping
    $dumpvars(0, andgate_tb);    // Dump variables for waveform tracing
  end
  
  initial begin
    A = 1'b0;    // Initialize input A to 0
    B = 1'b0;    // Initialize input B to 0
    #10;          // Delay for 10 time unit
    
    A = 1'b0;    // Change input A to 0
    B = 1'b1;    // Change input B to 1
    #10;          // Delay for 10 time unit
    
    A = 1'b1;    // Change input A to 1
    B = 1'b0;    // Change input B to 0
    #10;          // Delay for 10 time unit
    
    A = 1'b1;    // Change input A to 1
    B = 1'b1;    // Change input B to 1
    #10;         // Delay for 10 time units before finishing simulation
    $finish;     // Finish simulation
  end
  
  always @(*) begin
    $monitor("time=%0t , Y=%0b , A=%0b , B=%0b", $time, Y, A, B);
  end
endmodule
