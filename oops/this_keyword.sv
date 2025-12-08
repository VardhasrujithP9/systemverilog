class packet;
  int a;
  int b;
  function void display (string handle );
    $display("[%s]:A=%0d,B=%0d",handle,a,b);
  endfunction
  //------------customize constructor------------
  function new(int a,int b);
    this.a=a;
    this.b=b;
  endfunction
endclass
//-----------------testcase------------------------
module test;
  packet p1,p2;
  initial
    begin 
      p1=new(5,100);
      p2=new(200,85);
      p1.display("p1");
      p2.display("p2");
    end
endmodule