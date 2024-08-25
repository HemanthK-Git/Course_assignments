/* Design a Circuit mentioned in the figure with Gate Level Modeling Style. 
Identify the Name of the Circuit by performing Behavioral Simulation. */

`timescale 1ns/1ps

module full_adder(
    input a,b,c,
    output sum,carry
    );
    
 wire t1,t2,t3;
 xor xor_1(t1,a,b);
 xor xor_2(sum,t1,c);
 and and_1(t2,a,b);
 and and_2(t3,c,t1);
 or or_1(carry,t3,t2);
 
 endmodule

