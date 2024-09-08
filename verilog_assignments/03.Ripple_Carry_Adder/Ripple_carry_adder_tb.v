// Testbench for 4-bit Ripple_carry_adder

`timescale 1ns / 1ps

module ripple_carry_adder_tb();
reg [3:0] a,b;
reg c;
wire [3:0] sum,carry;

ripple_carry_adder dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

initial
    begin
        a=4'd0; b=4'd0; c=0;
    #10 a=4'd1; b=4'd5; c=0;  
    #10 a=4'd2; b=4'd7; c=1; 
    #10 a=4'd3; b=4'd0; c=1; 
    #10 a=4'd6; b=4'd2; c=0; 
    #10 a=4'd3; b=4'd5; c=1; 
    #10 $finish;
    end
endmodule
