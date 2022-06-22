module Full_Adder (
	output wire SUM, CARRY_OUT,
	input wire X,Y,CARRY_IN
);

wire sum1;
wire carry1, carry2;

// HA (SUM, CARRY, X, Y) ???
Half_Adder ha0 (sum1, carry1, X, Y);
Half_Adder ha1 (SUM, carry2, sum1, CARRY_IN);
or (CARRY_OUT, carry1, carry2);

endmodule
