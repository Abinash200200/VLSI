module parity_even_gen_tb;

  reg a, b, c; //  Declare input registers a, b, c
  wire z;      //  Declare output wire z
  
  parity_even_gen pg(.a(a), .b(b), .c(c), .z(z)); // Instantiate the module parity_even_gen and connect its ports
  
  initial begin 
    a = 0; b = 0; c = 0; //  Initialize inputs a, b, c
    #10; //  Wait for 10 time units
    
    // Repeat the following steps for all input combinations
    a = 0; b = 0; c = 1; #10;
    a = 0; b = 1; c = 0; #10;
    a = 0; b = 1; c = 1; #10;
    a = 1; b = 0; c = 0; #10;
    a = 1; b = 0; c = 1; #10;
    a = 1; b = 1; c = 0; #10;
    a = 1; b = 1; c = 1; #10;
    
    $finish; // 6. End simulation
  end
  
  initial begin 
    //  Monitor the values of signals a, b, c, and z
    $monitor("$time=%t , a=%d , b=%d , c=%d , z=%d", $time, a, b, c, z);
    
    //  Dump waveform into VCD file
    $dumpfile("parity_even_gen.vcd");
    $dumpvars(0, parity_even_gen_tb);
  end
  
endmodule
