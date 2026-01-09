
//==============call by reference====================//

module test;
  int a,b,c;
  function automatic int add( ref int a,b);
    a=100;
    b=200;
    return a+b;
  endfunction
  
  
  initial
    begin
      a=10;
      b=20;
      c=add(a,b);
      $display("%d,%d,%d",a,b,c);
    end
endmodule

//output A=100,B=200,C=300;