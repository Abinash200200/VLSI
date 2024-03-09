// Code for arithmetic testbench
module arithmetic_tb;
  reg a,b;
  wire c,d,e;
  arithmetic uut(.a(a),.b(b),.c(c),.d(d),.e(e));
  initial begin  //input values
    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    #10
    $finish();
  end
  initial begin  //monitor and dump intructions
    $monitor("a=%d b=%d c=%d d=%d e=%d ",a,b,c,d,e);
    $dumpfile("arithmetic.vcd");
    $dumpvars(1,arithmetic_tb);
  end
endmodule
