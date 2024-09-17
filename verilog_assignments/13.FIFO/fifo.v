// write a rtl code for fifo

`timescale 1ns / 1ps

module fifo(
    input clk,rst,wr_en,re_en,
    input [7:0] data_in,
    output reg [7:0] data_out,count,
    output reg empty,full    
    );
    reg [7:0] memory [63:0] ;
    reg [5:0] rd_ptr,wr_ptr;
//  checking fifo empty or full
    always@(count) 
        begin
            empty=(count==0);
            full=(count==64);
        end
//  count:    
    always@(posedge clk)
        begin
            if (rst)
                count<=0;
            else if ( (wr_en && !full) && (re_en && !empty) )  //  when both write and read enable same time
                    count<=count;
                 else if (wr_en && !full)
                            count<=count+1;
                      else if (re_en && !empty)
                                count<=count-1;
                           else
                                count<=count;                            
        end
//  fetch the data:
//  read and write the data from the fifo
    always@(posedge clk)
        begin
            if(rst)
                data_out<=0;
            else
            begin
                if (re_en && !empty)
                    data_out<=memory[rd_ptr];
                else
                    data_out<=data_out;
                if (wr_en && !full)
                    memory[wr_ptr]=data_in;
                else
                    memory[wr_ptr]=memory[wr_ptr];
            end      
        end
// write and read pointers
    always@(posedge clk)
        begin
            if(rst)
                begin
                    wr_ptr<=0;
                    rd_ptr<=0;
                end
            else 
                begin
                    if (re_en && !empty)
                        rd_ptr<= (rd_ptr+1) % 64;
                    else 
                        rd_ptr<=rd_ptr;
                    if (wr_en && !full)
                        wr_ptr<= (wr_ptr+1) % 64;
                    else
                        wr_ptr<=wr_ptr;
                end           
        end       
endmodule
