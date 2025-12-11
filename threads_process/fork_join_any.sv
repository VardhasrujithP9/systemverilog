

//it will not block ;
//if any one of the thread executes then it comes from the fork join any process it allows process like parent nd child thrad will execures concurrently executed
//==========================fork join_any=================================//
module test;
  initial
    begin 
      $display("before fork join  any process");
      fork 
        #12 $display($time,"\ thread a");
        #15 $display($time,"\ thread b");
        #2 $display($time,"\ thread c");
        #5 $display($time,"\ thread d");
      join_any
      #2$display($time,"\ thread e");
      #10$display($time, "After fork join any process");
    end
endmodule

      