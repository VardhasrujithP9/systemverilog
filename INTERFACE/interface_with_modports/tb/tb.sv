program tb(adder_intf inf);
  initial
    begin
      inf.a=0;inf.b=0;inf.cin=0;
      #2  inf.a=0;inf.b=0;inf.cin=1;
      #2   inf.a=0;inf.b=1;inf.cin=0;
      #2   inf.a=0;inf.b=1;inf.cin=1;
    end
  initial forever @(*)
    begin
      #1  $display("A=%b,b=%b,Cin=%b,S=%b,C=%b",inf.a,inf.b,inf.cin,inf.c,inf.s);
    end
endprogram


module top;
  adder_intf inf()
  ;
  fa(inf);
  tb(inf);
endmodule