//--------------inheritance----------------------//

class parent;
  int a;
  task display();
    $display(" i am in parent class");
  endtask
endclass
  class child extends parent;
    task display();
      $display(" child class");
    endtask
  endclass

    //---------------testcase-------------//
    
module test;
  parent p;
  child c;
  initial
    begin 
      p=new();
      c=new();
      c.display;
    end
endmodule