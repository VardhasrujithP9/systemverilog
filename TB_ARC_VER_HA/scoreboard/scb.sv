class scoreboard;
   
  mailbox mon2scb;
  transaction tr;
  
  function new(mailbox mon2scb);
    
    this.mon2scb = mon2scb;
    
  endfunction
 
  task main();
    
    repeat(5)
      begin
        
        mon2scb.get(tr);
        tr.display("[SCOREBOARD]");
        
        if ((( tr.a ^ tr.b ) == tr.s) && (tr.a & tr.b) )
          
          $display("PASS");
        
        else 
          
          $display("FAIL");
        
      end 
    
  endtask
  
endclass
          
          
        
        
        
        
       
        


        
        
       
        