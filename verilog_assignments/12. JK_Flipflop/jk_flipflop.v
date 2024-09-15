//  Write RTL for JK Flip Flop, using parameter declaration for the respective scenarios (HOLD, TOGGLE, SET, RESET).

`timescale 1ns / 1ps

module jk_flipflop(
    input j,k,clk,
    output reg q,
    output qn
    );
    parameter HOLD   = 2'b00;
    parameter RESET  = 2'b01;
    parameter SET    = 2'b10;
    parameter TOGGLE = 2'b11; 
    assign qn=~q;
    always@(posedge clk)
        begin
        case({j,k})
            HOLD: q<=q;
            RESET:q<=0;
            SET: q<=1;
            TOGGLE: q<=~q;
            default: q<=0;
        endcase
        end
endmodule
