module moore_101_tb;
  
  reg in,
      clk,
      rst,
      out;
  
  reg[2:0] present,
           next;
  
  moore_101 test(.in(in),
                 .clk(clk),
                 .rst(rst),
                 .out(out),
                 .present(present),
                 .next(next)
                );
  
  initial 
    begin
      
      in=1;
      
      clk=1;
      rst=1;
    #5rst=0;
      
    end
  
  initial
    begin
   #10 in=1;
   #10 in=0;
   #10 in=1;
   #100 $finish;  
    end
  
  always #5 clk=~clk;
  
  initial
    begin
      
      $monitor("%t rst= %d,input=%d,present state=%b,next state=%b,out=%d",$time,rst,in,present,next,out);
      
    end
  
endmodule
