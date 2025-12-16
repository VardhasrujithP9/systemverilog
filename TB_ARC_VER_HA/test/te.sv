`include "environment.sv"

program test(intf vif);
  environment e;
   
  initial
    begin
      
      e=new(vif);
      e.run();
    end
  
endprogram

      