module demux_1x2 (
    input s, a,        // Declaration of inputs s and a
    output y0, y1     //  Declaration of outputs y0 and y1
);

  wire s1;             // Declaration of intermediate wire
  
  and and1(y0, s1, a); // Connection and instantiation of AND gate for y0
  and and2(y1, s, a);   // Connection and instantiation of AND gate for y1
  not (s1, s);          // Connection and instantiation of NOT gate for s1

endmodule

