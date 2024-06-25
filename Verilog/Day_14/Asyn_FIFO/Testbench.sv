module async_fifo_tb;

  reg [7:0] wr_data;   // Write data input
  reg we, re;          // Write enable and read enable
  reg wr_clk, rd_clk;  // Write clock and read clock
  reg wr_rst, rd_rst;  // Write reset and read reset
  wire full, empty;    // Full and empty flags
  wire [7:0] rd_data;  // Read data output

  // Instantiate the async_fifo module
  async_fifo uut (
    .wr_data(wr_data),
    .we(we),
    .re(re),
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .wr_rst(wr_rst),
    .rd_rst(rd_rst),
    .full(full),
    .empty(empty),
    .rd_data(rd_data)
  );

  // Generate write clock with period of 10 units
  always #5 wr_clk = ~wr_clk; 

  // Generate read clock with period of 14 units
  always #7 rd_clk = ~rd_clk; 

  initial begin
    wr_clk = 0;       // Initialize write clock
    rd_clk = 0;       // Initialize read clock
    wr_rst = 1;       // Apply write reset
    rd_rst = 1;       // Apply read reset
    we = 0;           // Initialize write enable
    re = 0;           // Initialize read enable
    wr_data = 8'b0;   // Initialize write data
    #20;              // Wait for 20 time units
    wr_rst = 0;       // Deassert write reset
    rd_rst = 0;       // Deassert read reset

    // Write 4 bytes of data
    repeat (4) begin
      @(posedge wr_clk); // Wait for positive edge of write clock
      we = 1;            // Enable write
      wr_data = wr_data + 1; // Increment write data
    end
    @(posedge wr_clk); // Wait for positive edge of write clock
    we = 0;            // Disable write

    // Read 4 bytes of data
    repeat (4) begin
      @(posedge rd_clk); // Wait for positive edge of read clock
      re = 1;            // Enable read
    end
    @(posedge rd_clk); // Wait for positive edge of read clock
    re = 0;            // Disable read

    // Write and read 8 bytes of data alternatively
    repeat (8) begin
      @(posedge wr_clk); // Wait for positive edge of write clock
      we = 1;            // Enable write
      wr_data = wr_data + 1; // Increment write data

      @(posedge rd_clk); // Wait for positive edge of read clock
      re = 1;            // Enable read
      @(posedge rd_clk); // Wait for another positive edge of read clock
      re = 0;            // Disable read
    end
    @(posedge wr_clk); // Wait for positive edge of write clock
    we = 0;            // Disable write
    @(posedge rd_clk); // Wait for positive edge of read clock
    re = 0;            // Disable read
  end

  // Monitor and dump simulation results
  initial begin
    $monitor("Time: %0t, wr_data: %0d, we: %0b, re: %0b, full: %0b, empty: %0b, rd_data: %0h", $time, wr_data, we, re, full, empty, rd_data);
    $dumpfile("async_fifo.vcd"); // Dump file for waveform viewing
    $dumpvars(); // Dump all variables
    #200; // Run simulation for 200 time units
    $finish; // Finish simulation
  end
endmodule
