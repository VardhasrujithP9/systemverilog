class transaction;
  rand bit a,b;
       bit s,c;
  function void display(string handle);
    $display("------------------------");
    $display("%s",handle);
    $display("A=%b,B=%b,c=%b,s=%b",a,b,c,s);
    $display("-------------------");
  endfunction
endclass