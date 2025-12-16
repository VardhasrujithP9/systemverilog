class driver;
  
  mailbox  gen2driv;
  transaction tr;
  virtual intf vif;
  
  function new(mailbox gen2driv, virtual intf vif);
    
    this.gen2driv = gen2driv;
    this .vif     = vif;
    
  endfunction
  
  task main();
    
    repeat(5)
      begin
        gen2driv.get(tr);
        vif.a = tr.a;
        vif.b = tr.b;
        tr.display("[DRIVER]");
      end
    
  endtask
  
endclass
        
        
        
    
 