//---------randomization---------------//

//without rand and randc

class packet;
  int a;
  int b;
endclass

//------------testcase----------------//
module test;
  packet p1,p2;
  initial
    begin
      p1=new();
      p2=new();
      randomize(p1.a,p2.b);
      $display("%d,%d",p1.a,p2.b);
    end
endmodule




//drawback :randomize(p1.a,p2.b); we should write the all 50 signals should be written in this randomize 
//**solution is handle randomization if we use this signls must be wirtten rand na d randc
