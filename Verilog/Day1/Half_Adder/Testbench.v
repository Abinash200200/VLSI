module tb_half_adder;
  reg A, B;                 // Input registers A and B
  wire sum, carry;          // Output wires sum and carry
  
  half_adder hf(.A(A), .B(B), .carry(carry), .sum(sum));  // Instantiate half adder module

  initial begin
    $dumpfile("Half_adder.vcd");    // Specify VCD file for waveform dumping
    $dumpvars(0, tb_half_adder);    // Dump variables for waveform tracing
  end
  
  initial begin
    A = 1'b0;    // Initialize input A to 0
    B = 1'b0;    // Initialize input B to 0
    #1;          // Delay for 1 time unit
    
    A = 1'b0;    // Change input A to 0
    B = 1'b1;    // Change input B to 1
    #1;          // Delay for 1 time unit
    
    A = 1'b1;    // Change input A to 1
    B = 1'b0;    // Change input B to 0
    #1;          // Delay for 1 time unit
    
    A = 1'b1;    // Change input A to 1
    B = 1'b1;    // Change input B to 1
    #10;         // Delay for 10 time units before finishing simulation
    $finish;     // Finish simulation
  end

  always @(*) begin
    $monitor("time=%0t , sum=%0b , carry=%0b , A=%0b , B=%0b", $time, sum, carry, A, B);
  end
endmodule
