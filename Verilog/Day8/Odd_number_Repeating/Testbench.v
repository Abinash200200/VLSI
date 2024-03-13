module odd_number_tb;
  reg [31:0]num;
  odd_number uut(.num(num));
  initial begin
    repeat(7)
    #10
    num=$random;
    #10
    $finish();
  end
  initial
    $monitor("%t num=%d",$time,num);
endmodule
