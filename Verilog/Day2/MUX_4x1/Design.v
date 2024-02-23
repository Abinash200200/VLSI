module mux_4x1 (
    input d0, d1, d2, d3, s0, s2,   // Inputs d0, d1, d2, d3, s0, and s2
    output z                        //  Output z
);

  wire s1, s4, y0, y1, y2, y3;      // Declare intermediate wires
  
  and and1(y0, s1, d0, s4);         // AND gate to compute y0
  and and2(y1, s1, d1, s2);         // AND gate to compute y1
  and and3(y2, s0, d2, s4);         // AND gate to compute y2
  and and4(y3, s0, d3, s2);         // AND gate to compute y3
  or or1(z, y0, y1, y2, y3);        // OR gate to compute z
  
  not (s0, s1);                     // NOT gate to compute s0
  not (s2, s4);                     //  NOT gate to compute s2

endmodule

