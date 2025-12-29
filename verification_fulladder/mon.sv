class monitor;
 
   
  mailbox mon2scb;;
  virtual intf vif;
  
  function new(mailbox mon2scb, virtual intf vif);
    this.mon2scb = mon2scb;
    this .vif     = vif;
  endfunction
 
  task main();
    repeat(3)
      #1
      begin
        transaction tr;
        tr=new();
        tr.a = vif.a;
        tr.b = vif.b;
        tr.cin = vif.cin;
        tr.s = vif.s;
        tr.c = vif.c;
        mon2scb.put(tr);
        tr.display("[MONITOR]");
      end
  endtask
  
endclass
