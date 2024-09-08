// testbench for Decoder_2x4

`timescale 1ns / 1ps

module decode_2x4_tb();
reg [1:0] in;
wire [3:0] y;

decoder_2x4 dut(.in(in),.y(y));
initial 
    begin
            in=2'b00;
        #10; in=2'b01;
        #10; in=2'b10;
        #10; in=2'b11;
        #10 $finish;
    end
endmodule
