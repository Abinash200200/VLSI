 1  module moore_101_tb;
 2    reg in, clk, reset;
 3    wire out;
 4    wire [1:0] present, next;
 5    moore_101 moore_101 (
 6      .in(in), .clk(clk), .reset(reset),
 7      .out(out), .present(present), .next(next)
 8    );
 9    initial begin
10      $dumpfile("moore_101.vcd");
11      $dumpvars(1, moore_101_tb);
12      $monitor("t=%d reset=%b clk=%b in=%b present=%b next=%b out=%b",
13               $time, reset, clk, in, present, next, out);
14    end
15    initial begin
16      in = 1;
17      reset = 1;
18      clk = 1;
19      #5 reset = 0;
20    end
21    initial begin
22      #10 in = 1'b1;
23      #10 in = 1'b0;
24      #20 in = 1'b1;
25      #100 $finish;
26    end
27    always #10 clk =~clk;
28  endmodule
