module full_adder (
    input a,         // Input A
    input b,         // Input B
    input cin,       // Input Carry-in
    output sum,      // Output Sum
    output cout      // Output Carry-out
);

assign sum = a ^ b ^ cin;                    // Calculate Sum
assign cout = (a & b) | (b & cin) | (a & cin);  // Calculate Carry-out

endmodule

