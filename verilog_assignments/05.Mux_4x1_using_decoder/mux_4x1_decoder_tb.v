// testbench for mux 4x1 using decoder and tristate buffer

`timescale 1ns / 1ps

module mux_4x1_decoder_tb();
reg int0,int1,int2,int3;
reg st0,st1;
wire yt;

mux_4x1_decoder dut(.in0(int0),.in1(int1),.in2(int2),.in3(int3),.s0(st0),.s1(st1),.y(yt));

initial 
    begin
    
    int1=0;int1=0;int2=0;int3=0;st0=0;st1=0;
    #10 int0=1;int1=1;int2=0;int3=1;st0=0;st1=1;
    #10 int0=1;int1=1;int2=0;int3=1;st0=1;st1=0;
    #10 int0=1;int1=1;int2=0;int3=1;st0=1;st1=1;
    #10 int0=1;int1=1;int2=0;int3=1;st0=0;st1=0;
    #10 $finish;
    
    end

endmodule
