class scoreboard;
  
  mailbox mon2scb;
  
  function new(mailbox mon2scb);
    this.mon2scb =mon2scb;
  endfunction
  
  task main();
    repeat(5)
      begin
        transaction tr;
        
        mon2scb.get(tr);
        if({tr.c,tr.s} == (tr.a+tr.b))
          $display("pass");
        else
          $display("fail");
      end
  endtask
endclass
