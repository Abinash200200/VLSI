module task_tb;
  integer  a;
  task sum(input int x,y);
    begin
      a=x+y;
    end
  endtask
  initial begin
    sum(9,7);
    $display("a=%d",a);
  end
endmodule
    
