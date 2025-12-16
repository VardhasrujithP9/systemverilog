class generator;
  
  mailbox  gen2driv;
  transaction tr;
  
  function new(mailbox gen2driv);
    this.gen2driv = gen2driv;
  endfunction
 
  task main();
    repeat(5)
      begin 
        tr=new();
        tr.randomize();
        gen2driv.put(tr);
        tr.display("[GENERATOR]");
      end
  endtask
  
  
        
  