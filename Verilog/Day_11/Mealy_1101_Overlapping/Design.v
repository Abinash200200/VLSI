module mealy_1101(in,
                  clk,
                  rst,
                  present,
                  next,
                  out
                 );
  
  
  input in,
        clk,
        rst;
  
  output out,
         present,
         next;
  
  reg in,
      clk,
      rst;
  
  reg out;
  
  output reg[1:0] present,
                  next;
  
  parameter [3:0] s0=3'b000,
                  s1=3'b001,
                  s2=3'b010,
                  s3=3'b011,
                  s4=3'b100;
                  
  
  
  always@(posedge clk)
       
    begin
      
      if(rst==1)
        
        present<=s0;
      
      else
        
        present<=next;
   
    end
  
  always@(present,in)
    
    begin

      case(present)

        s0:
          
          begin
            
            out=0;
            
            if(in==1)
              
              next=s1;
            
            else
              
              next=s0;
            
          end
        
        s1:
          
          begin
            
            out=0;
            
            if(in==1)
              
              next=s2;
            
            else
              
              next=s0;
            
          end
        
        s2:
          
          begin
            
            out=0;
            
            if(in==0)
              
              next=s3;
            
            else
              
              next=s1;
            
          end
        
        s3:
          
          begin
            
            out=1;
            
            if(in==1)
              
              next=s1;
            
            else
              
              next=s0;
            
          end
            
            endcase
        
        end
        
        endmodule











      
