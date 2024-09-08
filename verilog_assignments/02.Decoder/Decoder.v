//  Write RTL for 2x4 decoder using Dataflow abstraction.

`timescale 1ns / 1ps

module decoder_2x4(
    input [1:0] in,
    output [3:0] y
    );
    
    assign y[0]=~in[1]&~in[0];
    assign y[1]=~in[1]&in[0];
    assign y[2]=in[1]&~in[0];
    assign y[3]=in[1]&in[0];
    
endmodule
