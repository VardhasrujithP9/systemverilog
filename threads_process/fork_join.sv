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
      