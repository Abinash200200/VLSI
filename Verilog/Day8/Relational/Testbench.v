module Relational_tb;

  reg [2:0] A;                 // Line 3: 3-bit wide register A
  reg [2:0] B;                 // Line 4: 3-bit wide register B
  wire Y1, Y2, Y3, Y4;         // Line 5: Wires for outputs Y1, Y2, Y3, Y4

  Relational dut(              // Line 7: Instantiation of the Relational module
    .A(A),                     // Connection of A to the Relational module
    .B(B),                     // Connection of B to the Relational module
    .Y1(Y1),                   // Connection of Y1 to the Relational module
    .Y2(Y2),                   // Connection of Y2 to the Relational module
    .Y3(Y3),                   // Connection of Y3 to the Relational module
    .Y4(Y4)                    // Connection of Y4 to the Relational module
  );

  initial begin                // Line 16: Initial block for testbench setup
    A = 3'b001;                // Assigning binary value 001 to A
    B = 3'b101;                // Assigning binary value 101 to B
    #10;                       // Delay for 10 time units
    $finish;                   // Finishing the simulation
  end
     
  always @*                    // Line 23: Continuous assignment for displaying signals
    $monitor("A=%b, B=%b, Y1=%b, Y2=%b, Y3=%b, Y4=%b", A, B, Y1, Y2, Y3, Y4);

endmodule
