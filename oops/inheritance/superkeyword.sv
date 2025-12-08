//super is used to refer to the immediate parent class object.
//super() must be the first statement inside the child class constructor.
//If super() is not written, the compiler automatically calls the default parent constructor.
//this → current class object
//super → parent class object

class parent;
  int a;
  task display();
    $display(" i am in parent class");
  endtask
endclass
  class child extends parent;
    task display();
      super.display();
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