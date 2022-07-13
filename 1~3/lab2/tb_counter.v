`timescale 10ns/1ps
module tb_counter;

wire [3:0] Q;
reg CLK;
reg CLR;

// module :  Counter4 ([3:0] Q, clk, clr);
Counter4 behavior_counter (
	.Q   (Q),
	.clk (CLK),
	.clr (CLR)
);

//Counter4 behavior_counter(Q, CLK, CLR);

initial begin
CLK = 1'b0; CLR = 1'b0;
#3 CLR = 1'b1;
#20 $finish;
end

always begin
#1 CLK = ~CLK;
end

endmodule
