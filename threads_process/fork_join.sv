//fork–join is used to run multiple statements or threads in parallel.
//All statements inside a fork block start at the same simulation time.

//a) fork–join
//*Parent waits until ALL child threads complete.
//Variables inside fork behave like separate parallel tasks.
//fork–join is usually used with delays, waits, or event-based operations.

module test;
  initial
    begin
      $display("before fork join process");
      fork 
        #12 $display($time,"\ thread a");
        #15 $display($time,"\ thread b");
        #2 $display($time,"\ thread c");
        #5 $display($time,"\ thread d");
      join
      #2$display($time,"\ thread e");
      #10$display($time,"After fork join process");
    end
endmodule 
      