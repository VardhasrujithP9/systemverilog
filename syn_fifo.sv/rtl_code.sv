module syn_fifo(
  input clk,rst,wr,rd,
  input [7:0]data_in,
  output empty,full,
  output reg [7:0]data_out,
  output reg [4:0]fifo_cnt
);

//ram declartion
reg[7:0]fifo_ram[0:7];

//pointer will shows the location of ram;
reg [2:0]rd_ptr,wr_ptr;


///=========================READ & WRITE OPERATION BLOCK==========================//

//===============READ OPERATION=====================================//
always@(posedge clk)
begin
    if (rd && !empty)
      data_out <= fifo_ram[rd_ptr];
    else if(rd && wr)
     data_out <= fifo_ram[rd_ptr];
end

//================WRITE OPERATION======================================//
always@(posedge clk)
begin
    if (wr && !full)
       fifo_ram[wr_ptr] <= data_in;
    else if(rd && wr)
     fifo_ram[wr_ptr] <= data_in;
end

//======================POINTER BLOCK====================================//
always@(posedge clk)
begin 
    if(rst)
    begin
     rd_ptr <= 0;
     wr_ptr <= 0;
    end
    else
    begin
        rd_ptr <= ((rd && wr)    ||  (rd && !empty)) ? 0 : fifo_cnt - 1;
        wr_ptr <= ((wr && !full) ||  (rd && !wr))    ? 0 : fifo_cnt + 1;
    end
end

//========================COUNTER BLOCK=================================//

always @(posedge clk) 
begin
  if (rst) begin
    fifo_cnt <= 0;
  end
  else 
  begin
    case({wr,rd})
    2'b00:fifo_cnt <=fifo_cnt;
    2'b01:fifo_cnt <=(fifo_cnt ==0)?0:fifo_cnt-1;
    2'b10:fifo_cnt <=(fifo_cnt ==8)?0:fifo_cnt+1;
    2'b11:fifo_cnt <=fifo_cnt;
    default fifo_cnt <= fifo_cnt;
    endcase
  end
end
endmodule


    
     
