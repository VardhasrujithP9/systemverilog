module HA(input a,b,
          output s,c
         );
  assign {c,s} = a+b;
endmodule
