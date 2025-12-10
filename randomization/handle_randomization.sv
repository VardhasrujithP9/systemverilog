//---------randomization---------------//



class packet;
  rand bit [8:0]a;
  rand bit[7:0]b;
endclass

//------------testcase----------------//
module test;
  packet p1,p2;
  initial
    begin
      p1=new();
      p2=new();
      repeat(5)
        begin
         p1.randomize();//it will randomize the overall packet;                                                packet;
          $display("%d,%d",p1.a,p1.b);
         end
    end
  
endmodule




