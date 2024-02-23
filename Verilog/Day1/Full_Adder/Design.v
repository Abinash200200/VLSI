module full_adder (
    input A,         // Input A
    input B,         // Input B
    input Cin,       // Input Carry-in
    output Sum,      // Output Sum
    output Cout      // Output Carry-out
);

assign Sum = A ^ B ^ Cin;                    // Calculate Sum
assign Cout = (A & B) | (B & Cin) | (A & Cin);  // Calculate Carry-out

endmodule

