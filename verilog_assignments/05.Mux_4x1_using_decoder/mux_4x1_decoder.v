// Write RTL for 4x1 Mux using Decoder & tri-state buffers and verify the same using a TestBench.

`timescale 1ns / 1ps

module mux_4x1_decoder(
    input s0,s1,in0,in1,in2,in3,
    output y
    );
    reg a,b,c,d;
    wire y0,y1,y2,y3;
    always @(*)
        begin
            case({s0,s1})
            2'b00: {a,b,c,d}={1'b1,3'd0};
            2'b01: {a,b,c,d}={1'b0,1'b1,2'd0};
            2'b10: {a,b,c,d}={2'd0,1'b1,1'd0};
            2'b11: {a,b,c,d}={3'd0,1'b1};
            default:{a,b,c,d}=4'd0;
            endcase
        end
        
    tristate ts1(.in(in0),.en(a),.y(y0));
    tristate ts2(.in(in1),.en(b),.y(y1));
    tristate ts3(.in(in2),.en(c),.y(y2));
    tristate ts4(.in(in3),.en(d),.y(y3));
    
    assign y=y0|y1|y2|y3;
    
endmodule

module tristate(
    input in,en,
    output y
    );
    assign y=(en)?in:1'b0;
endmodule
