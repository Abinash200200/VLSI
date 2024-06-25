module async_fifo(
  input [7:0] wr_data,  // Data input to be written to the FIFO
  input we,             // Write enable
  input re,             // Read enable
  input wr_clk,         // Write clock
  input rd_clk,         // Read clock
  input wr_rst,         // Write reset
  input rd_rst,         // Read reset
  output full,          // FIFO full flag
  output empty,         // FIFO empty flag
  output reg [7:0] rd_data // Data output from the FIFO
);
  reg [7:0] mem[0:255]; // FIFO memory storage
  reg [7:0] wr_pnt;     // Write pointer
  reg [7:0] rd_pnt;     // Read pointer
  reg [7:0] wr_pnt_gray; // Write pointer in Gray code
  reg [7:0] rd_pnt_gray; // Read pointer in Gray code
  reg [7:0] wr_pnt_gray_s1, wr_pnt_gray_s2; // Synchronized write pointer for read domain
  reg [7:0] rd_pnt_gray_s1, rd_pnt_gray_s2; // Synchronized read pointer for write domain
  
  // Write pointer and Gray code generation
  always @(posedge wr_clk or posedge wr_rst)
    if (wr_rst) begin
      wr_pnt <= 0;           // Reset write pointer
      wr_pnt_gray <= 0;      // Reset write pointer in Gray code
    end else if (we && !full) begin
      wr_pnt <= wr_pnt + 1;  // Increment write pointer
      wr_pnt_gray <= (wr_pnt >> 1) ^ ((wr_pnt + 1) >> 1); // Convert to Gray code
    end
  
  // Read pointer and Gray code generation
  always @(posedge rd_clk or posedge rd_rst)
    if (rd_rst) begin
      rd_pnt <= 0;           // Reset read pointer
      rd_pnt_gray <= 0;      // Reset read pointer in Gray code
    end else if (re && !empty) begin
      rd_pnt <= rd_pnt + 1;  // Increment read pointer
      rd_pnt_gray <= (rd_pnt >> 1) ^ ((rd_pnt + 1) >> 1); // Convert to Gray code
    end
  
  // Synchronize write pointer to read clock domain
  always @(posedge rd_clk or posedge rd_rst)
    if (rd_rst) begin
      wr_pnt_gray_s1 <= 0;   // Reset synchronization registers
      wr_pnt_gray_s2 <= 0;
    end else begin
      wr_pnt_gray_s1 <= wr_pnt_gray;   // First stage synchronization
      wr_pnt_gray_s2 <= wr_pnt_gray_s1; // Second stage synchronization
    end
  
  // Synchronize read pointer to write clock domain
  always @(posedge wr_clk or posedge wr_rst)
    if (wr_rst) begin
      rd_pnt_gray_s1 <= 0;   // Reset synchronization registers
      rd_pnt_gray_s2 <= 0;
    end else begin
      rd_pnt_gray_s1 <= rd_pnt_gray;   // First stage synchronization
      rd_pnt_gray_s2 <= rd_pnt_gray_s1; // Second stage synchronization
    end
  
  // Write data to memory
  always @(posedge wr_clk)
    if (we && !full) begin
      mem[wr_pnt[7:0]] <= wr_data; // Write data to the FIFO memory
    end
  
  // Read data from memory
  always @(posedge rd_clk)
    if (re && !empty) begin
      rd_data <= mem[rd_pnt[7:0]]; // Read data from the FIFO memory
    end
  
  // Full flag generation
  assign full = (wr_pnt_gray == {~rd_pnt_gray_s2[7], rd_pnt_gray_s2[6:0]}); // FIFO is full when write pointer is one step behind the read pointer in Gray code
  
  // Empty flag generation
  assign empty = (wr_pnt_gray_s2 == rd_pnt_gray); // FIFO is empty when synchronized write pointer equals read pointer

endmodule
