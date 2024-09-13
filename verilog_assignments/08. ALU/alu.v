// write rtl code for alu operators

`timescale 1ns / 1ps
`define add 4'b0000
`define inc 4'b0001
`define sub 4'b0010
`define mul 4'b0011
`define div 4'b0100
`define mod 4'b0101
`define and1 4'b0110
`define or1 4'b0111
`define nand1 4'b1000
`define nor1 4'b1001
`define xor1 4'b1010

module alu(
    input [7:0] a,b,
    input [3:0] sel,
    output reg [15:0] out
    );
    
    always@(*)
        begin
            case(sel)
                `add : out=a+b;
                `inc : out=a+1;
                `sub : out=a-b;
                `mul : out=a*b;
                `div : out=a/b;
                `mod : out=a%b;
                `and1 : out=a&b;
                `or1 : out=a|b;
                `nand1 : out=~(a&b);
                `nor1 : out=~(a|b);
                `xor1 : out=a^b;
                default: out=0;
            endcase        
        end    
endmodule
