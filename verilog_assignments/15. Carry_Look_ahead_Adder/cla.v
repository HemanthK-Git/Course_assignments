// write a rtl code for carry look ahead adder

`timescale 1ns / 1ps

module cla(
    input [3:0] a,b,
    input cin,
    output reg [3:0] sum,
    output reg [4:0] cout
    );
    reg [3:0] gen;
    reg [3:0] prop;
    integer i;
    always@(*)
        begin
            cout[0]=cin;
            gen=0;
            prop=0;
            sum=0;
                for(i=0;i<4;i=i+1)
                    begin
                        gen[i]=a[i]&b[i];
                        prop[i]=a[i]^b[i];
                        cout[i+1]=gen[i]|(prop[i]&cout[i]);
                        sum[i]=prop[i]^cout[i];
                    end   
        end   
endmodule
