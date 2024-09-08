// Mux_4x1 testbench

`timescale 1ns / 1ps

module mux_4x1_2x1_tb();
reg [3:0] in;
wire y;
reg [1:0] sel;

mux_4x1_2x1 dut(.in(in),.y(y),.sel(sel));

initial 
    begin
        in=4'd11; sel=2'd0;
        #10 in=4'd11; sel=2'd1;
        #10 in=4'd11; sel=2'd2;
        #10 in=4'd11; sel=2'd3;
        #10 $finish;
    end

endmodule
