`include "test.sv"


module toptest;

intf i_intf();

  test t1(i_intf);

  ha DUT(.a(i_intf.a), .b(i_intf.b), .s(i_intf.s), .c(i_intf.c));

initial 
  begin
  $dumpfile("dump.vcd"); 
  $dumpvars;

end


endmodule