// Write TestBench for 3:8 Decoder

`timescale 1ns / 1ps

module decoder_3x8_tb();
reg [7:0] din ;
reg [2:0] in;
reg en;
wire [7:0] a,b,c,d,e,f,g,h;

decoder_3x8 dut(.din(din),.in(in),.en(en),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h));

initial 
    begin
    din=8'd13; en=1; in=3'd0;
    #10 din=8'd13; en=0; in=3'd0;
    #10 din=8'd13; en=0; in=3'd1;
    #10 din=8'd13; en=0; in=3'd2;
    #10 din=8'd13; en=0; in=3'd3;
    #10 din=8'd13; en=0; in=3'd4;
    #10 din=8'd13; en=0; in=3'd5;
    #10 din=8'd13; en=0; in=3'd6;
    #10 din=8'd13; en=0; in=3'd7;
    #10 $finish;
    end

endmodule
