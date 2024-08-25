// Design 4-bit Johnson Counter using Structural Modeling style.

`timescale 1ns/1ps

module johnson_counter_4(
    input clk,rst,
    output [3:0] Q,Qbar
    );
    
 D_ff Dinst1(.D(Qbar[3]),.clk(clk),.rst(rst),.Q(Q[0]),.Qbar(Qbar[0]));
 D_ff Dinst2(.D(Q[0]),.clk(clk),.rst(rst),.Q(Q[1]),.Qbar(Qbar[1]));
 D_ff Dinst3(.D(Q[1]),.clk(clk),.rst(rst),.Q(Q[2]),.Qbar(Qbar[2]));
 D_ff Dinst4(.D(Q[2]),.clk(clk),.rst(rst),.Q(Q[3]),.Qbar(Qbar[3]));

endmodule

module D_ff(
    input D,clk,rst,
    output reg Q,Qbar
    );
    
always @(posedge clk)
    begin
        if (rst)
            begin 
                Q<=1'b0;
                Qbar<=1'b1;
            end
        else 
            begin
                Q<=D;
                Qbar<=~D;
            end
     end
endmodule     
