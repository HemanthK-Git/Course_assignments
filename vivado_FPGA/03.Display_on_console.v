// Store the Value mentioned in basic info with same format and display the stored value on console.

`timescale 1ns/1ps  // Specify time unit and time precision

module simulation_tb();
    reg [3:0] a = 4'd12;    // 4-bit register 'a' with a value of 12
    reg [8:0] b = 9'd345;   // 9-bit register 'b' with a value of 345
    reg [2:0] c = 3'b100;   // 3-bit register 'c' with a binary value 100

    initial begin
        $display("Value of a = %d, b = %d, c = %b", a, b, c);
    end
endmodule

// Output: Value of a=12, b=345, c=100
