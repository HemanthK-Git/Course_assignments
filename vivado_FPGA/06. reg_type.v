// Add expression to reg type Variable

`timescale 1ns/1ps

module regtype;
    reg [3:0] a = 4'h7;
    reg [3:0] b = 4'hf;
    reg [3:0] res;

    always @* begin
        res = a ^ b;
    end

    initial begin
        #10;
        $display("Value of res: %h", res);
        $finish;
    end
endmodule
