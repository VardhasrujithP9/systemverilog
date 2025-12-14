// Code your testbench here
// or browse Examples
class packet;
  int x;
endclass
 class spacket;
   int y;
   packet p;
   function new();
     p=new();
   endfunction
   
 endclass



module test;

  spacket sp1;
  initial
  begin
    sp1=new();
    sp1.y=20;
    sp1.p.x=25;
    $display("Y=%0d,X=%0d",sp1.y,sp1.p.x);
    
  end
endmodule
    