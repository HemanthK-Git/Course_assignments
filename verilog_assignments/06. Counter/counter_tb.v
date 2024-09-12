// write the testbench of counter

`timescale 1ns/1ps

module counter_tb();
reg clk,rst,up_down;
wire [3:0] count;

counter dut(.clk(clk),.rst(rst),.up_down(up_down),.count(count));

initial 
    begin
    clk=0;
    forever #5 clk=~clk;
    end
    
initial 
    begin
    
        rst=1; up_down=0; 
        #10 rst=0; 
        #150 up_down=1;
        #10 rst=0; 
        #150 up_down=0;
        #150 $finish;    
    end
    
endmodule
