// write a rtl code for rca  6bits and find it overflow

`timescale 1ns / 1ps

module rca(
    input [5:0] a,b,
    input cin,
    output reg [5:0] sum,
    output reg cout,
    output reg overflow
    );
    reg [5:0] carry;
    integer i;
    always @(*)
        begin
            {carry[0],sum[0]}=a[0]+b[0]+cin;
            for(i=1;i<6;i=i+1)
                begin
                    {carry[i],sum[i]}=a[i]+b[i]+carry[i-1];
                end
            cout=carry[5];
            overflow=carry[5] ^ carry[4];
        end
endmodule
