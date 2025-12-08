class packet;
  int a;
  int b;
  function void display(string handle);
    $display("[%s],A=%0d,B=%0d",handle,a,b);
  endfunction 
endclass

//---------------MODULETEST-----------------------//

module test ;
 packet p1,p2; //HANDLE DECLARATION
  initial
    begin 
      p1=new();
      p2=new();
      $display("memory before allocation");
      p1.a=100;
      p1.b=200;
      p2.a=300;
      p2.b=250;
      $display("after allocation of memory ");
      p1.display("P1");
      p2.display("p2");
   end 
endmodule