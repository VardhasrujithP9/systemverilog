class generator;
   rand transaction tr;
    mailbox gen2driv;
  function new(mailbox gen2driv);
    this.gen2driv = gen2driv;
  endfunction
   
  
  task main();
    repeat(2)
      begin
        tr=new();
       assert (tr.randomize());
        gen2driv.put(tr);
        tr.display("[GENERATOR]");
      end
  endtask
endclass
