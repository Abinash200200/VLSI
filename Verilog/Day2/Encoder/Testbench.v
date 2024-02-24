`timescale 1ns / 1ps

module encoder_8x3_gate_level_tb;

    // Inputs
    reg [7:0] data_in;
    
    // Outputs
    wire [2:0] encoded_out;
    
    // Instantiate the encoder module
    encoder_8x3_gate_level uut (
        .data_in(data_in),
        .encoded_out(encoded_out)
    );
    
    // Clock generation
    reg clk = 0;
    always #5 clk = ~clk; // Toggle the clock every 5 time units
    
    // Stimulus
    initial begin
        // Test case 1
        data_in = 8'b00000001;
        #10; // Wait for some time
        // Expected output: 3'b000
        
        // Test case 2
        data_in = 8'b00000010;
        #10; // Wait for some time
        // Expected output: 3'b001
        
        // Test case 3
        data_in = 8'b00000100;
        #10; // Wait for some time
        // Expected output: 3'b010
        
        // Test case 4
        data_in = 8'b00001000;
        #10; // Wait for some time
        // Expected output: 3'b011
        
        $finish; // End simulation
    end
    
endmodule
