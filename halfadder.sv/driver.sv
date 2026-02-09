class driver;
  virtual intf vif;
  mailbox gen2driv;
  function new(mailbox gen2driv, virtual intf vif);
    this.gen2driv = gen2driv;
    this.vif = vif;
  endfunction
  
   task main();
    repeat(5)
      begin
        transaction tr;
        gen2driv.get(tr);
        vif.a <= tr.a;
        vif.b <= tr.b;
        #5;
        tr.display("[DRIVER]");
      end
  endtask
endclass
      