// write rtl code for clock divider for 100hz

`timescale 1ns/1ps

module clock_divider(
    input clk,rst,
    output reg dum_clk
    );
reg [6:0] count;
    
    always@(posedge clk)
        begin
            if(rst)
                count<=0;
            else
                if (count==100)
                    count<=0;
                else
                    count<=count+1;          
         end
         
    always@(posedge clk)
        begin
            if(rst)
                dum_clk<=0;
            else if(count==50)
                dum_clk<=~dum_clk;
            else
                dum_clk<=dum_clk;
        end
endmodule
