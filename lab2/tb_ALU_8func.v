`timescale 10ns/1ps

module tb_ALU_8func;

wire [3:0] OUT;
reg  [3:0] IN0;
reg  [3:0] IN1;
reg [2:0] SEL;

ALU_8func beh_ALU (
	.OUT (OUT),
	.IN0 (IN0),
	.IN1 (IN1),
	.SEL (SEL)
);

initial begin
IN0 =4'b0101; IN1 = 4'b0010;
SEL = 3'b000;
#10 $finish;
end


always begin
#1 SEL = SEL + 1'b1;
//if (SEL < 3'b111) SEL = SEL + 1'b1;
//if (SEL == 3'b111) SEL = 3'b000;
end


endmodule
