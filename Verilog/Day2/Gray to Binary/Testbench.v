module Gray_to_Binary_tb;

    reg [3:0] g;             // Input Gray code signal
    wire [3:0] b;            // Output binary signal
    
    // Instantiate the unit under test (uut)
    Gray_to_Binary uut (
        .g(g),
        .b(b)
    );

    // Initial block for setting up VCD dump
    initial begin
        $dumpfile("Gray_to_Binary.vcd");    // Specify VCD dump file
        $dumpvars(0);                        // Dump all variables
    end
  
    // Stimulus block
    initial begin
        g = 4'b0000;                        // Initial input value
        #10 g = 4'b0001;                     // Change input after 10 time units
        #10 g = 4'b0010;                     // Change input after another 10 time units
        #10 g = 4'b0011;                     
        #10 g = 4'b0100;
        #10 g = 4'b0101;
        #10 g = 4'b0110;
        #10 g = 4'b0111;
        #10 g = 4'b1000;
        #10 g = 4'b1001;
        #10 g = 4'b1010;
        #10 g = 4'b1011;
        #10 g = 4'b1100;
        #10 g = 4'b1101;
        #10 g = 4'b1110;
        #10 g = 4'b1111;
        $finish;                            // End simulation after all inputs
    end
  
    // Display block for monitoring input and output
    always @* begin
        $monitor("$time=%0t , g=%0[3:0]b , b=%0[3:0]b", $time, g, b);
    end

endmodule

