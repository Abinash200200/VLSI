// Code for demux8_1
module demux_8_1(
  input D, 
  input s0,s1,s2,
  output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
  wire inv0, inv1, inv2; 
  not  (inv0, s0);
  not  (inv1, s1);
  not  (inv2, s2);
// 3-input AND gates.
  and  (Y0, inv2, inv1, inv0, D );
  and  (Y1, inv2, inv1, s0, D );
  and  (Y2, inv2, s1, inv0, D );
  and  (Y3, inv2, s1, s0, D );
  and  (Y4, s2, inv1, inv0, D );
  and  (Y5, s2, inv1, s0, D );
  and  (Y6, s2, s1, inv0, D );
  and  (Y7, s2, s1, s0, D );
endmodule 
