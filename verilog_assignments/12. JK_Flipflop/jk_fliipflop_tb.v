//  Write TestBench for JK Flip Flop, using parameter declaration for the respective scenarios (HOLD, TOGGLE, SET, RESET).

`timescale 1ns / 1ps

module jk_flipflop_tb();
reg j,k,clk;
wire q,qn;
jk_flipflop dut(.j(j),.k(k),.clk(clk),.q(q),.qn(qn));

initial
    begin
    clk=0;
    forever #5 clk=~clk;
    end
    
initial
    begin
    j=0; k=0;
    #15 j=0; k=1;
    #15 j=1; k=0;
    #15 j=1; k=1;
    #15 j=0; k=0;
    #15 $finish;
    end

endmodule
