module MUX2to1 #(parameter BITWIDTH = 32) (
	input wire [BITWIDTH-1:0]	DI0,
	input wire [BITWIDTH-1:0]	DI1,
	input wire 			SEL,
	output wire [BITWIDTH-1:0]	DO
);

 assign DO = ({ BITWIDTH {~SEL}} & DI0) | ({ BITWIDTH {SEL}} & DI1);

endmodule