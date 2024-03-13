module logic_gate(
    input a,
    input b,
    output c, d, e, f, g, h, i);

assign c = a & b;   
assign d = a | b;   
assign e = ~a;      
assign f = ~(a | b); 
assign g = a ^ b;   
assign h = ~(a ^ b); 
assign i = ~(a & b); 

endmodule
