module logic_gate_tb;

  // Inputs
  reg a, b;

  // Outputs
  wire c, d, e, f, g, h, i;

  // Instantiate the module to be tested
  logic_gate uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .h(h),
    .i(i)
  );

  // Stimulus
  initial begin
    // Test case 1
    a = 1'b0;
    b = 1'b0;
    #10;

    // Test case 2
    a = 1'b1;
    b = 1'b0;
    #10;

    // Test case 3
    a = 1'b0;
    b = 1'b1;
    #10;

    // Test case 4
    a = 1'b1;
    b = 1'b1;
    #10;

    // End of simulation
    $finish;
  end

  // Display outputs
  always @*
    $display("$time=%t, a=%b, b=%b, c=%b, d=%b, e=%b, f=%b, g=%b, h=%b, i=%b",$time, a, b, c, d, e, f, g, h, i);

endmodule
