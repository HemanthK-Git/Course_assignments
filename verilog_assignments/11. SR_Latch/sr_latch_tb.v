// write testbench for sr latch using gate level

`timescale 1ns / 1ps

module sr_latch_tb();
reg s,r;
wire q,qn;

sr_latch dut(.s(s),.r(r),.q(q),.qn(qn));

initial 
    begin
    s=0; r=0;
    #10 s=0; r=1;
    #10 s=1; r=0;
    #10 s=1; r=1;
    #10 $finish;
    end
endmodule
