module swap;
     int a=10,b=15, temp;
     initial begin 
     temp=a;
     a=b;
     b=temp;
     $display(" Values of a=%0d b=%0d",a,b);
     
end
endmodule
