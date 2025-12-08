//-----------polymorphism---------------------//
class parent;
  virtual function void display();
    $display("i am in parent class");
  endfunction
endclass

//---------child1 class --------------------//
 class child1 extends parent;
     function void display();
       $display("i am in child1 class");
  endfunction
endclass

//------------child2------------------------//
 class child2 extends parent;
     function void display();
       $display("i am in child2 class");
  endfunction
endclass

//------------------testcase----------------//
module test;
  parent p1,p2;
  child1 c1;
  child2 c2;
  initial
    begin
      c1=new();
      c2=new();
    //handle assignmnet
      p1=c1;
      p2=c2;
    //accessing methods
      p1.display;
      p2.display;
    end
endmodule
