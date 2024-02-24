module decoder24_tb;
  // input port are declared in reg(register)
  reg a,b,en;
  // output port are declared in wire(net)
  wire [3:0]y;
  // instantiate design block
  decoder24_gate dut(en,a,b,y);

  initial
    begin
      $monitor("en=%b a=%b b=%b y=%b",en,a,b,y);
      // with reference to truth table provide input values
      en=1;a=1'bx;b=1'bx;#5
      en=0;a=0;b=0;#5
      en=0;a=0;b=1;#5
      en=0;a=1;b=0;#5
      en=0;a=1;b=1;#5
      // terminate simulation using $finish system task
      $finish;
    end
  always@(*)begin
    $dumpfile("decoder24.vcd);
    $dumpvars(0);
  end          
endmodule
