// testbench for rca 

`timescale 1ns / 1ps

module rca_tb();
reg [5:0] a,b;
reg cin;
wire cout;
wire [5:0] sum;
wire overflow;

rca dut(.a(a),.b(b),.cin(cin),.cout(cout),.sum(sum),.overflow(overflow));

initial
    begin
        a=6'b000000; b=6'b000000; cin=0;
        #10; a=6'b100101; b=6'b001100; cin=0;
        #10; a=6'b100101; b=6'b101100; cin=1;
        #10 $finish;
    end

endmodule
