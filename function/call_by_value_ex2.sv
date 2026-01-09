
//==============call by value====================//

module test;
  int a,b,c,d;
  function automatic int add(int a,b);
    a=100;
    b=200;//local variables limited this scope
    return a+b;
  endfunction
  
  
  initial
    begin
      a=10;
      b=20;
      c=add(a,b);
      $display("A=%0d,B=%0d,C=%0d",a,b,c);
      a=1000;
      b=2000;
      d=add(a,b);
      $display("A=%0d,B=%0d,C=%0d",a,b,d);
    end
endmodule



