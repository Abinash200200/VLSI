module orgate_tb;
  reg A, B;        // Input registers A and B
  wire Y;          // Output wire Y
  
  orgate tt(.A(A), .B(B), .Y(Y));  // Instantiate OR gate module
  
  initial begin
    $dumpfile("orgate.vcd");    // Specify VCD file for waveform dumping
    $dumpvars(0, orgate_tb);    // Dump variables for waveform tracing
  end
  
  initial begin
    A = 1'b0;    // Initialize input A to 0
    B = 1'b0;    // Initialize input B to 0
    #10;         // Delay for 10 time units
    
    A = 1'b0;    // Change input A to 0
    B = 1'b1;    // Change input B to 1
    #10;         // Delay for 10 time units
    
    A = 1'b1;    // Change input A to 1
    B = 1'b0;    // Change input B to 0
    #10;         // Delay for 10 time units
    
    A = 1'b1;    // Change input A to 1
    B = 1'b1;    // Change input B to 1
    #10;         // Delay for 10 time units before finishing simulation
    $finish;     // Finish simulation
  end
  
  always @(*) begin
    $monitor("time=%0t , Y=%0b , A=%0b , B=%0b", $time, Y, A, B);
  end
endmodule
