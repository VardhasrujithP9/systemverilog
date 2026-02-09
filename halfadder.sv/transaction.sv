class transaction;
  rand bit a,b;
       bit s,c;
  function void display(string handle);
    $display("----------------------------");
    $display("%s",handle);
    $display("A=%0d,B=%0d",a,b);
    $display("S=%0d,C=%0d",s,c);
    $display("***************************");
  endfunction
endclass
  
  
