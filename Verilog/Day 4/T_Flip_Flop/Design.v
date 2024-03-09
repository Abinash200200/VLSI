// Code for t flip flop
module tff(t,q,qb,clk);
  input t,clk;
  output q,qb;
  reg q,qb;
  initial q=0;
always@(posedge clk)begin
    if(t==1)
      q=~q;
    else
      q=q;
    end
    assign
      qb=~q;
endmodule   
