module Replicatrion_tb;      // Typo: Should be "Replication_tb"
  
  reg [2:0] A, B;            // Line  3-bit wide registers A and B
  wire [15:0] y1;            // Line  16-bit wide wire y1
  wire [31:0] y2;            // Line  32-bit wide wire y2
  
  Replication uut(           // Line  Instantiation of the Replication module
    .A(A),                   // Connection of A to the Replication module
    .B(B),                   // Connection of B to the Replication module
    .y1(y1),                 // Connection of y1 to the Replication module
    .y2(y2)                  // Connection of y2 to the Replication module
  );
  
  initial begin              // Line  Initial block for testbench setup
    
    A = 3'b101;              // Assigning value 101 to A
    B = 3'b100;              // Assigning value 100 to B
    #10                      // Delay for 10 time units
    $finish;                 // Finishing the simulation
    
  end
  
  always @*                  // Line  Continuous assignment for displaying signals
    $monitor("A=%b, B=%b, y1=%b, y2=%b", A, B, y1, y2);

endmodule
