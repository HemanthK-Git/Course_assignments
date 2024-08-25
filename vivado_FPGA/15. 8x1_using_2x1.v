// Design 8:1 Mux using 2:1 Mux

`timescale 1ns/1ps

module mux_8x1(
    input [3:0] a,b,
    input [2:0] sel,
    output y
    );
    
wire w1,w2,w3,w4,w5,w6;

mux_2x1 m0(.a(a[0]),.b(b[0]),.sel(sel[0]),.y(w1));
mux_2x1 m1(.a(a[1]),.b(b[1]),.sel(sel[0]),.y(w2));
mux_2x1 m2(.a(a[2]),.b(b[2]),.sel(sel[0]),.y(w3));
mux_2x1 m3(.a(a[3]),.b(b[3]),.sel(sel[0]),.y(w4));
mux_2x1 m4(.a(w1),.b(w2),.sel(sel[1]),.y(w5));
mux_2x1 m5(.a(w3),.b(w4),.sel(sel[1]),.y(w6));
mux_2x1 m6(.a(w5),.b(w6),.sel(sel[2]),.y(y));
   
endmodule

module mux_2x1(
    input a,b,sel,
    output y
    );
    
assign y=(sel==1'b0)?a:b;

endmodule
