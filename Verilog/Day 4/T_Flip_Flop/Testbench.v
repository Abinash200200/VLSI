// Code for T flip_flop_testbench
module tff_tb;
  reg t,clk;
  wire q,qb;
  tff uut(.t(t),.clk(clk),.q(q),.qb(qb));
  initial begin  //monitor and dump instructions
    $monitor("t=%d clk=%d q=%d qb=%d",t,clk,q,qb);
    $dumpfile("tff.vcd");
    $dumpvars(1,tff_tb);
  end
  initial begin
    clk=0;
  forever #2 clk=~clk;
  end
  initial begin // input values
    t=0;
    #2
    t=1;
    #2
    t=1;
    #5
    t=0;
    #5
    t=1;
    #5
    $finish();
  end
endmodule
