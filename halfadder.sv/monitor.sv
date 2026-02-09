class monitor;
  virtual intf vif;
  mailbox mon2scb;
  function new(mailbox mon2scb, virtual intf vif);
    this.mon2scb =mon2scb;
    this.vif = vif;
  endfunction
  
   task main();
    repeat(5)
      begin
    
        transaction tr;
        tr=new();
        #5;
        tr.s = vif.s;
        tr.c = vif.c;
        mon2scb.put(tr);
        tr.display("[monitor]");
      end
  endtask
endclass
      