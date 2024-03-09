module PrimeChecker(
  input  [31:0]num);

always @(*)
  begin
    if((num==2)||(num%2==1)&&(num%3==1)||(num%3==2))
      $display("prime number",num);
    else
      $display("not a prime number",num);
   end 
endmodule
