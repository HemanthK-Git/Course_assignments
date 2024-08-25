// Swap the content of two 16-bit register using blocking and Non-blocking assignment.

`timescale 1ns/1ps

module tb;
    reg [15:0] a = 16'h1531;
    reg [15:0] b = 16'h1232;
    reg [15:0] temp;

    initial begin
        temp = a;
        a = b;
        b = temp;
        $display("Value after blocking assignment: a=%h, b=%h", a, b);
    end

    initial begin
        a <= b;
        b <= a;
        #1;
        $display("Value after non-blocking assignment: a=%h, b=%h", a, b);
    end
endmodule
