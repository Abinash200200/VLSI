// Code for demux8_1 testbench
module demux_8_1_tb;
reg D;
reg  s0,s1,s2;
wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7; 
demux_8_1 demux(.D(D),.s0(s0),.s1(s1),.s2(s2),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6),.Y7(Y7));
initial begin  //input values
  D=1;s2=0;s1=0;s0=0;
  #10
  D=1;s2=0;s1=0;s0=1;
  #10
  D=1;s2=0;s1=1;s0=0;
  #10
  D=1;s2=0;s1=1;s0=1;
  #10
  D=1;s2=1;s1=0;s0=0;
  #10
  D=1;s2=1;s1=0;s0=1;
  #10
  D=1;s2=1;s1=1;s0=0;
  #10
  D=1;s2=1;s1=1;s0=1;
  #10
  $finish();
end
initial begin   //monitor and dump instructions
  $monitor("%t D=%d s0=%d s1=%d s2=%d Y0=%d Y1=%d Y2=%d Y3=%d Y4=%d Y5=%d Y6=%d Y7=%d",$time,D,s0,s1,s2,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
  $dumpfile("demux_8_1.vcd");
  $dumpvars(1,demux_8_1_tb);
end
endmodule
