module test;
  int dy[];
  
  initial
    begin
      $display("%p",dy);
      dy=new[5];
      $display("%p",dy);
      foreach(dy[i])
        dy[i]=i+1;
      $display("%p",dy);
      dy=new[5](dy);//copy the previous value and creting 5 locations of memory
      $display("%p",dy);
      dy=new[10];
      $display("%p",dy);
    end
endmodule

      
      
      