// Design 2-input OR gate with Switch Level Modeling Style.

module or_switch(
    input a,b,
    output y
    );
wire t1,t2;

supply1 vdd;
supply0 gnd;

pmos p1(t1,vdd,a);
pmos p2(t2,t1,b);
pmos p3(y,vdd,t2);

nmos n1(t2,gnd,a);
nmos n2(t2,gnd,b);
nmos n3(y,gnd,t2);

endmodule
