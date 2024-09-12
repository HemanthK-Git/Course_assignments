// write testbench for clock divider

`timescale 1ns / 1ps

module clock_divider_tb();
reg clk,rst;
wire dum_clk;

clock_divider dut(.clk(clk),.rst(rst),.dum_clk(dum_clk));

initial
    begin
    clk=0;
    forever #5 clk=~clk;
    end
    
initial 
    begin
    rst=1;
    #10 rst=0;
    end

endmodule
