// Write RTL and TestBench for 4:1 Mux using 2:1 Muxes

`timescale 1ns / 1ps

module mux_4x1_2x1(
    input [3:0] in,
    input [1:0] sel,
    output  y
);
wire w1,w2;

mux_2x1 int1(.in(in[1:0]),.sel(sel[0]),.y(w1));
mux_2x1 int2(.in(in[3:2]),.sel(sel[0]),.y(w2));
mux_2x1 int3(.in({w2,w1}),.sel(sel[1]),.y(y));

endmodule

module mux_2x1(
    input [1:0] in,
    output reg y,
    input sel
    );
    
    always@(*)
        begin    
            case (sel) 
                1'b0: y=in[0];
                1'b1: y=in[1];
                default: y=0;
            endcase
        end
endmodule
