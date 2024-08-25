// Design 8 x 3 Priority Encoder.

`timescale 1ns/1ps

module encoder_8x3(
    
    input [7:0] I,
    output reg a,b,c,d
    );
    
    always @(*)
        begin
            case(I)
            
            8'd0:  {a,b,c,d}=4'b0000;
            8'd0:  {a,b,c,d}=4'b0001;
            8'd1:  {a,b,c,d}=4'b0011;
            8'd2:  {a,b,c,d}=4'b0101;
            8'd4:  {a,b,c,d}=4'b0111;
            8'd8:  {a,b,c,d}=4'b1001;
            8'd16: {a,b,c,d}=4'b1011;
            8'd32: {a,b,c,d}=4'b1101;
            8'd64: {a,b,c,d}=4'b1111;
            
            default: {a,b,c,d}=4'b0000;
            endcase
        end
 
 endmodule
            
            
