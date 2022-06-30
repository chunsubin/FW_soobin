module MUX4to1 #(parameter BITWIDTH = 32) (
	input wire  [BITWIDTH-1:0]	DI0,
	input wire  [BITWIDTH-1:0]	DI1,
	input wire  [BITWIDTH-1:0]	DI2,
	input wire  [BITWIDTH-1:0]	DI3,
	input wire  [3:0]		SEL,
	output reg  [BITWIDTH-1:0]	DO
);

// fill the part
//  MUX2TO1 : assign DO = ({ BITWIDTH {~SEL}} &  DI0) | ({ BITWIDTH {SEL}} & DI1);
 always @(SEL) 
  case (SEL) 
	4'b0001 : DO = DI0;
	4'b0010 : DO = DI1;
	4'b0100 : DO = DI2;
	4'b1000 : DO = DI3;
  endcase

endmodule
