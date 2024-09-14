// Write RTL for 3:8 Decoder

`timescale 1ns / 1ps

module decoder_3x8(
    input [2:0] in,
    input [7:0] din,
    input en,
    output reg [7:0] a,b,c,d,e,f,g,h
    );
    
    always@(*)
        begin
            if (en)
                {a,b,c,d,e,f,g,h}=64'b0;
            else begin
                case(in)
                3'd0: {a,b,c,d,e,f,g,h}={din,56'd0};
                3'd1: {a,b,c,d,e,f,g,h}={8'd0,din,48'd0};
                3'd2: {a,b,c,d,e,f,g,h}={16'd0,din,40'd0};
                3'd3: {a,b,c,d,e,f,g,h}={24'd0,din,32'd0};
                3'd4: {a,b,c,d,e,f,g,h}={32'd0,din,24'd0};
                3'd5: {a,b,c,d,e,f,g,h}={40'd0,din,16'd0};
                3'd6: {a,b,c,d,e,f,g,h}={48'd0,din,8'd0};
                3'd7: {a,b,c,d,e,f,g,h}={56'd0,din};
                default:{a,b,c,d,e,f,g,h}=64'b0;
                endcase
            end
        end
    
endmodule
