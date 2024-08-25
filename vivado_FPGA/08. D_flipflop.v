/* Implement D-Flipflop with Synchronous and Asynchronous Reset. Assume both True and 
complemented output pins are available in the D-Flipflop and 
it should send a value of '0'  on the true output pin when the user applies Active High reset onto Flipflop. */

`timescale 1ns/1ps

module d_ff(
    input din, clk, rst,
    output reg syn_Q, syn_Qbar,asyn_Q, asyn_Qbar
    );
  // synchronous  
always @(posedge clk)
    begin
        if (rst) begin
            syn_Q <= 1'b0;
            syn_Qbar <= 1'b1;  // ~1'b0 is 1'b1
        end
        else begin
            syn_Q <= din;
            syn_Qbar <= ~din;  // Complement directly from din
        end 
    
    end
    // asynchronous
always @(posedge clk,posedge rst)
        begin
            if (rst) begin
                asyn_Q <= 1'b0;
                asyn_Qbar <= 1'b1;  // ~1'b0 is 1'b1
            end
            else begin
                asyn_Q <= din;
                asyn_Qbar <= ~din;  // Complement directly from din
            end 
        
        end
    
endmodule
