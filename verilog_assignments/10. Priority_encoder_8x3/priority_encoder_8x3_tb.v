// rite TestBench for 8:3 Priority encoder

`timescale 1ns / 1ps

module priority_encoder_8x3_tb();
reg  [7:0] in;
wire [2:0] out;

priority_encoder_8x3 dut(.in(in),.out(out));

initial 
    begin
    in=8'd0; 
    #10 in=8'd1;
    #10 in=8'd2;
    #10 in=8'd4;
    #10 in=8'd8;
    #10 in=8'd16;
    #10 in=8'd32;
    #10 in=8'd64;
    #10 in=8'd128;
    #10 $finish;
    end
endmodule
