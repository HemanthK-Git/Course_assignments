// write RTL for SR Latch using Gate level Modelling

`timescale 1ns / 1ps

module sr_latch(
    input s,r,
    output  q,qn
    );
    
    nor (q,r,qn);
    nor (qn,s,q);
    
endmodule
