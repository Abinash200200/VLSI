module Binary_to_Gray_tb;

    reg [3:0] b;              // Input binary signal
    wire [3:0] g;             // Output Gray code signal
    
    // Instantiate the unit under test (uut)
    Binary_to_Gray uut (
        .b(b),
        .g(g)
    );
  
    // Initial block for setting up VCD dump
    initial begin
        $dumpfile("Binary_to_Gray.vcd");    // Specify VCD dump file
        $dumpvars(0);                        // Dump all variables
    end
  
    // Stimulus block
    initial begin
        b = 4'b0000;                        // Initial input value
        #10 b = 4'b0001;                     // Change input after 10 time units
        #10 b = 4'b0010;                     // Change input after another 10 time units
        #10 b = 4'b0011;                     // ...
        #10 b = 4'b0100;
        #10 b = 4'b0101;
        #10 b = 4'b0110;
        #10 b = 4'b0111;
        #10 b = 4'b1000;
        #10 b = 4'b1001;
        #10 b = 4'b1010;
        #10 b = 4'b1011;
        #10 b = 4'b1100;
        #10 b = 4'b1101;
        #10 b = 4'b1110;
        #10 b = 4'b1111;
        $finish;                            // End simulation after all inputs
    end
  
    // Display block for monitoring input and output
    always @* begin
      $monitor("$time=%0t , input=%0[3:0]b , output=%0 [3:0]b", $time, input, output);
    end

endmodule

