// Design a Full Subtractor with Gate Level Modeling Style.

`timescale 1ns/1ps

module full_subtractor(
    input a,b,cin,
    output diff,borrow
    );
    
assign diff=a^b^cin;
assign borrow=((~a)&b)|(b&cin)|(cin&(~a));

endmodule
