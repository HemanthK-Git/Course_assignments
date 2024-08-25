/* Take the help of the 2:1 Mux with complemented output design 
we discussed earlier and try to implement 4:1 Mux with True and Complemented output. */

`timescale 1ns/1ps

module mux4x1(
    input [3:0] in,
    input [1:0] sel,
    output reg Y,
    output reg ybar
    );
    
 wire [1:0] y1;
 
 mux2x1 int1(.in(in[1:0]),.sel(sel[0]),.y(y1[0]));
 mux2x1 int2(.in(in[3:2]),.sel(sel[0]),.y(y1[1]));
 
 always @(sel[1]) begin
 if (sel[1]== 0)
    Y=y1[0];
 else
    Y=y1[1];
 ybar = ~Y;
 end
 endmodule


module mux2x1(
    input [1:0] in,
    input sel,
    output reg y
    );
    
    always @(sel) 
        begin
            y = (sel==0)?in[0]:in[1];
        end
    
endmodule
