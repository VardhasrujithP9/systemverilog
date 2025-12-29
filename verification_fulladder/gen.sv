class generator;
  
   rand transaction tr;
        mailbox gen2driv;
  
  function new(mailbox gen2driv);
    this.gen2driv = gen2driv;
  endfunction
   
  
  task main();
    repeat(3)
      begin
        tr=new();
        tr.randomize();
        gen2driv.put(tr);
        tr.display("[GENERATOR]");
      end
  endtask
endclass