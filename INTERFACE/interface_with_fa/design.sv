interface adder_intf ;
  logic a,b,cin,s,c;
endinterface

module fa(adder_intf inf);
  assign {inf.s,inf.c}=inf.a+inf.b+inf.cin;
endmodule