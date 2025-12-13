//==========================================================//
//-------------INTERFACE------------------------------------//
//==========================================================//

interface adder_intf ;
  logic a,b,cin,s,c;
  modport dut(input a,b,cin,output s,c);
  modport tb (input s,c, output a,b,cin);
  
endinterface

//================================================//
//--===========DESIGN============================//
//==============================================//
module fa(adder_intf inf);
  assign {inf.s,inf.c}=inf.a+inf.b+inf.cin;
endmodule