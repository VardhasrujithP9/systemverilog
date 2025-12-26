module test;
  int a[][][];
  
  initial
    
    begin
      
      a=new[4];
      
      foreach(a[i])
        a[i]=new[3];// mandatory for 2d this process
      
      foreach (a[i,j])
        a[i][j] = new[2];// mandatory upto 3d this process
      
      $display("%p",a);
      
      foreach (a[i,j,k])
        a[i][j][k]=i*100+j*10+k;
      $display("%p",a);
      
    end
  
endmodule
