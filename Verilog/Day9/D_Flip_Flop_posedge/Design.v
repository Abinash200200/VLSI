module d_flip_flop_posedge(   // Module declaration
  input clk, d,               // Input ports clk and d
  output q;                   // Output port q
  reg q;                      // Internal register q, represents the output of the flip-flop

  always @(posedge clk)       // Sensitivity list, triggered on the positive edge of clk
  begin
     q <= d;                  // Assign the value of input d to output q on the positive edge of clk
  end

endmodule                      // End of module declaration
