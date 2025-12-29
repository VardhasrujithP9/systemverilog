class scoreboard;
   
  mailbox mon2scb;
  transaction tr;
  
  function new(mailbox mon2scb);
    
    this.mon2scb = mon2scb;
    
  endfunction
 
  task main();
    
    repeat(3)
      begin
        
        mon2scb.get(tr);
        tr.display("[SCOREBOARD]");
       if ( ((tr.a ^ tr.b ^ tr.cin) == tr.s) &&
     ( ((tr.a & tr.b) | (tr.b & tr.cin) | (tr.a & tr.cin)) == tr.c ) )
         $display("****PASS****");
else
  $display("****FAIL****");

         tr.display("[SCOREBOARD]");
        
      end 
    
  endtask
  
endclass