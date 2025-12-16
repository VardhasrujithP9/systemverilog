`include "test.sv"
`include "interface.sv"


module top();
  
  intf vif();
  ha a0 (.a(vif.a),.b(vif.b),.s(vif.s),.c(vif.c));
  test b0(vif);
 
initial
  begin
    $dumpfile("dump.vcd");
    $dumpvar;
  end
endmodule
    
  