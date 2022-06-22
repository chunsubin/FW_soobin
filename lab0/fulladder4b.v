module fulladder4b(
	output wire [3:0] SUM,
	output wire       CARRY_OUT,
	input wire [3:0] X,
	input wire [3:0] Y,
	input wire       CARRY_IN
);

wire c1, c2, c3;

	
// Module : Full_Adder ( output wire SUM, CARRY_OUT, input wire X,Y,CARRY_IN); 
Full_Adder fa0 (SUM[0], c1, X[0], Y[0], CARRY_IN);
Full_Adder fa1 (SUM[1], c2, X[1], Y[1], c1);
Full_Adder fa2 (SUM[2], c3, X[2], Y[2], c2);
Full_Adder fa3 (SUM[3], CARRY_OUT, X[3], Y[3], c3);

endmodule


