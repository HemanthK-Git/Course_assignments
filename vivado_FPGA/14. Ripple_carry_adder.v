// Design 4-bit Ripple Carry Adder with the help of 1-bit adder

`timescale 1ns/1ps

module ripple_carry_adder(
    input [3:0] a,b,
    input c,
    output [3:0] sum,carry
    );
    
full_adder fa0(.a(a[0]),.b(b[0]),.c(c),.sum(sum[0]),.carry(carry[0]));
full_adder fa1(.a(a[1]),.b(b[1]),.c(carry[0]),.sum(sum[1]),.carry(carry[1]));
full_adder fa2(.a(a[2]),.b(b[2]),.c(carry[1]),.sum(sum[2]),.carry(carry[2]));
full_adder fa3(.a(a[3]),.b(b[3]),.c(carry[2]),.sum(sum[3]),.carry(carry[3]));
    
endmodule



module full_adder(
    input a,b,c,
    output sum,carry
    );
    
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);

endmodule
