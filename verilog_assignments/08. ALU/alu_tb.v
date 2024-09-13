// testbench for alu operators

`timescale 1ns / 1ps

module testbench;
    reg [7:0] a, b;
    reg [3:0] sel;
    wire [15:0] out;

    alu uut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    initial begin
        a = 8'd10;
        b = 8'd5;
        sel = `add;
        #10;

        sel = `inc;
        #10;

        sel = `sub;
        #10;

        sel = `mul;
        #10;

        sel = `div;
        #10;

        sel = `mod;
        #10;

        sel = `and1;
        #10;

        sel = `or1;
        #10;

        sel = `nand1;
        #10;

        sel = `nor1;
        #10;

        sel = `xor1;
        #10;

        $finish;
    end
endmodule
