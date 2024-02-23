module full_adder_tb;
    reg a, b, cin;
    wire sum, carry;

    // Instantiate the Full Adder
    full_adder fa(a, b, cin, sum, carry);

    initial begin
        $monitor("At time %0t: a=%b b=%b, cin=%b, sum=%b, carry=%b",
                 $time, a, b, cin, sum, carry);

        // Test cases
        a = 0; b = 0; cin = 0; #1;
        a = 0; b = 0; cin = 1; #1;
        a = 0; b = 1; cin = 0; #1;
        a = 0; b = 1; cin = 1; #1;
        a = 1; b = 0; cin = 0; #1;
        a = 1; b = 0; cin = 1; #1;
        a = 1; b = 1; cin = 0; #1;
        a = 1; b = 1; cin = 1; #1;
        $finish();
    end
endmodule
