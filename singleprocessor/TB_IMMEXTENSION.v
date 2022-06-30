`timescale 10ns/1ps
module TB_IMMEXTENSION;
	reg  [2:0] IMM3;
	reg  [4:0] IMM5;
	reg  [7:0] IMM8;
	reg  [10:0] IMM11;
	wire [31:0] IMM3_EX;
	wire [31:0] IMM5_EX;
	wire [31:0] IMM8_EX;
	wire [31:0] IMM11_EX;
	

// module IMMEXTENSION (IMM3,IMM5,IMM8,IMM11,IMM3_EX,IMM5_EX,IMM8_EX,IMM11_EX);

IMMEXTENSION immextension
(
	.IMM3     (IMM3),
	.IMM5     (IMM5),
	.IMM8     (IMM8),
	.IMM11    (IMM11),
	.IMM3_EX  (IMM3_EX),
 	.IMM5_EX  (IMM5_EX),
	.IMM8_EX  (IMM8_EX),
	.IMM11_EX (IMM11_EX)
);

initial begin
	IMM3 = 3'b101;
	IMM5 = 5'b10101;
	IMM8 = 8'b10101010;
	IMM11 = 11'b10101010101;
	#1;
end


endmodule

