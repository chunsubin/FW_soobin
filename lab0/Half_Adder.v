
module Half_Adder (
	output wire SUM, CARRY,
	input wire X,Y
);

	and (CARRY, X, Y);
	xor (SUM, X, Y);

endmodule
