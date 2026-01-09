
//==============call by value====================//

module test;
  int a,b,c;
  function int add(  int a,b);
    a=100;
    b=200;
    return a+b;
  endfunction
  
  
  initial
    begin
      a=10;
      b=20;
      c=add(a,b);
      $display("A=%0d,B=%0d,C=%0d",a,b,c);
    end
endmodule

//output A=10,B=20,C=300
