module tb_bcd2bin ();
    // Declare the signals to be used in the testbench
    reg [3:0] bcd3, bcd2, bcd1, bcd0; // Input BCD digits
    wire [13:0] bin; // Output binary equivalent
    reg clk, rst; // Clock and reset signals

    // Instantiate the BCD to binary converter module
    bcd2bin u_bcd2bin (
        .bcd3 (bcd3),
        .bcd2 (bcd2),
        .bcd1 (bcd1),
        .bcd0 (bcd0),
        .bin (bin)
    );

    // Generate a clock signal with a period of 20 ns
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    // Generate a reset signal that is active low for 50 ns
    initial begin
        rst = 0;
        #50 rst = 1;
    end

    // Generate some input stimuli for the BCD to binary converter
    initial begin
        // Wait for the reset to be inactive
        @(posedge rst);

        // Apply some BCD values and observe the binary output
        bcd3 = 4'b0000; bcd2 = 4'b0000; bcd1 = 4'b0000; bcd0 = 4'b0000; // Decimal 0
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0000; bcd1 = 4'b0000; bcd0 = 4'b0001; // Decimal 1
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0000; bcd1 = 4'b0000; bcd0 = 4'b0010; // Decimal 2
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0000; bcd1 = 4'b1001; bcd0 = 4'b1001; // Decimal 99
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0001; bcd1 = 4'b0000; bcd0 = 4'b0000; // Decimal 100
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0001; bcd1 = 4'b0000; bcd0 = 4'b0001; // Decimal 101
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b1111; bcd1 = 4'b1111; bcd0 = 4'b1111; // Decimal 255
        #20;

        // Stop the simulation
        $finish;
    end

    // Monitor the input and output signals and print them to the console
    initial begin
      $monitor ("time = %0t, BCD = %b %b %b %b, Binary = %b", $time, bcd3, bcd2, bcd1, bcd0, bin);
    end

endmodule
