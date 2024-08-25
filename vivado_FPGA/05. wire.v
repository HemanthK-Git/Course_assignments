// Add expression to Wire type Variable

`timescale 1ns/1ps

module adding;
    reg [3:0] a = 4'd10;
    reg [3:0] b = 4'd12;
    wire [3:0] c;

    assign c = a & b;

    initial begin
        #1;
        $display("Continuous assignment value of c is %d", c);
    end
endmodule
