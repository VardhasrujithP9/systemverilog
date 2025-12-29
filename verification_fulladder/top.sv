`include "test.sv"
`include "interface.sv"


module top();
  
  intf i_intff();
  full_adder DUT(.a(i_intff.a),.b(i_intff.b),.s(i_intff.s),.c(i_intff.c));
  test b0(i_intff);
 
initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule