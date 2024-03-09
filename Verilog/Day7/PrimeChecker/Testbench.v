module PrimeChecker_tb;
  reg [7:0] num;
  PrimeChecker pc (.num(num));
  initial begin
    num=5;
    #10
    $finish();
  end
  initial begin
    $monitor("%t num=%d ",$time,num);
  end
  endmodule
  
