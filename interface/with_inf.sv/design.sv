interface intf;
  logic a
  logic b;
  logic cin;
  logic s;
  logic c;
endinterface



module adder (intf inf);
  assign {inf.s,inf.c}=inf.a+inf.b+inf.cin;
endmodule
  