program test(intf inf);
  initial
    begin
        inf.a=0;inf.b=0;inf.cin=0;
      #2inf.a=0;inf.b=0;inf.cin=1;
      #3inf.a=0;inf.b=1;inf.cin=0;
      #4inf.a=0;inf.b=1;inf.cin=1;
    end
endprogram
initial begin
  forever @(*)
  #1$display("A=%b,B=%b,Cin=%b,S=%b,C=%b",inf.a,inf.b,inf.cin,inf.s,inf.c);
 end
endprogram


module top;
  intf inf();
  adder a0(inf);
  test b0(inf);
endmodule



  

      