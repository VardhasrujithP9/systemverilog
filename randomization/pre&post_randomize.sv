//-----------randomiaztion controlling ---------------//
class packet;
  rand bit[4:0]a;
  rand bit[7:0]b;
  
   function void pre_randomize();
     $display("i am n pre randomize");
  endfunction
  
  function void post_randomize();
    $display(" A=%0d,b=%0d",a,b);
  endfunction
  
endclass

  //-------------testcase-----------------//
  module test;
    packet p1,p2;
    initial
      begin
        p1=new();
        $display("-------randomization on--------");
        repeat(2)
          begin
            p1.randomize();

          end
        $display("---disabling randomization--");
          p1.randomize();
          repeat(2)
            begin
            p1.randomize();
          end
        $display("---disabling randomization a--");
        p1.a.rand_mode(0);
          repeat(2)
            begin
            p1.randomize();
          end
        $display("---enabling randomization--");
                  p1.randomize(1);
          repeat(2)
            begin
            p1.randomize();
             
          end
                  end
                  endmodule
                  



