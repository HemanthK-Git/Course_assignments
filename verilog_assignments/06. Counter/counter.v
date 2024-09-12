// write the rtl code on counter and testbench

`timescale 1ns/1ps

module counter(
    input clk,rst,up_down,
    output reg [3:0] count
    );
    
    always@(posedge clk)
        begin
            if (rst)
                count<=4'd0;
            else if (up_down)
                count<=count+1;
                else 
                count<=count-1;
         
        end
endmodule
