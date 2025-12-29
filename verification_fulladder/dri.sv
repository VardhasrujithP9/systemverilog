class driver;
  
    transaction tr;
    mailbox gen2driv;
    virtual intf vif;
  
  function new(mailbox gen2driv,virtual intf vif);
    this.gen2driv = gen2driv;
    this.vif      = vif ;
  endfunction
   
  task main();
    repeat(3)
      begin 
        tr=new();
        gen2driv.get(tr);
        vif.a = tr.a;
        vif.b = tr.b;
        vif.cin = tr.cin;
      end
  endtask
endclass