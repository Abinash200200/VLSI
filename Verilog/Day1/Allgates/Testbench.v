module allgat;             //  Module declaration with module name 'allgat'

  reg a,b;                 //  Declare reg type variables a and b for inputs
  wire c,d,e,f,g,h,i;      //  Declare wire type variables c, d, e, f, g, h, i for outputs

  allgates ag(a,b,c,d,e,f,g,h,i);  //  Instantiate 'allgates' module with instance name 'ag'

  initial begin            //  Start of initial block

    a=1'b0;                //  Initialize input a to 0
    b=1'b0;                //  Initialize input b to 0
    #10;                   //  Delay for 10 time units

    a=1'b0;                //  Change input a to 0
    b=1'b1;                //  Change input b to 1
    #10;                   //  Delay for 10 time units

    a=1'b1;                //  Change input a to 1
    b=1'b0;                //  Change input b to 0
    #10;                   //  Delay for 10 time units

    a=1'b1;                //  Change input a to 1
    b=1'b1;                //  Change input b to 1
    #10;                   //  Delay for 10 time units

    $finish;               //  Finish simulation

  end                       //  End of initial block

  initial begin            //  Start of another initial block

    $monitor(" time=%0t , a=%0b , b=%0b , or=%0b , and=%0b, not=%0b, nand=%0b, nor=%0b, xor=%0b, xnor=%0b", $time, a, b, c, d, e, f, g, h, i);
                            //  Print formatted output with values of time, a, b, and gates' outputs
    $dumpfile("allgates.vcd");  //  Dump waveform data to a VCD file named 'allgates.vcd'
    $dumpvars(0,allgat);    //  Dump variables into the VCD file

  end                       //  End of initial block

endmodule                  //  End of module

