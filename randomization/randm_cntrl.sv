//-----------randomiaztion controlling ---------------//
class packet;
  rand bit[4:0]a;
  rand bit[7:0]b;
  function void display(string handle);
    $display("[%s]: A=%0d,b=%0d",handle,a,b);
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
            p1.display("p1");
          end
        $display("---disabling randomization--");
          p1.randomize();
          repeat(2)
            begin
            p1.randomize();
              p1.display("p1");
          end
        $display("---disabling randomization a--");
        p1.a.rand_mode(0);
          repeat(2)
            begin
            p1.randomize();
              p1.display("p1");
          end
        $display("---enabling randomization--");
                  p1.randomize(1);
          repeat(2)
            begin
            p1.randomize();
              p1.display("p1");
          end
                  end
                  endmodule
                  



