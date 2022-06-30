// retry~~~~
module CP_GEN (
	input wire [9:0] OPCODE,
	output wire [3:0] REGSEL,
	output wire [3:0] IMMSEL,
	output wire [3:0] NZCVWRITE,
	output wire       R_BRANCH,
	output wire [3:0] COND,
	output wire       MEMRW,
	output wire       MEMTOREG,
	output wire [3:0] ALUOP,
	output wire       ALUSRC,
	output wire       REGWRITE,
	output wire       C_BRANCH,
	output wire       BSEL
);

	reg        [26:0] cp;

assign {REGSEL, IMMSEL, NZCVWRITE, R_BRANCH, COND, MEMRW, MEMTOREG, ALUOP, ALUSRC, REGWRITE, C_BRANCH, BSEL} = cp;

always@(*)
begin
casex(OPCODE)
     10'b0100000000: cp <= 27'b0001xxxx11100xxxx000100010x; // AND
     10'b0100001100: cp <= 27'b0001xxxx11100xxxx000001010x; // ORR
     10'b0100000001: cp <= 27'b0001xxxx11100xxxx000010010x; //EOR
     10'b0000001100: cp <= 27'b0010xxxx11110xxxx001000010x; // ADD.reg
     10'b0000001110: cp <= 27'b0010000111110xxxx0010001100; // ADD.imm
     10'b0000001100: cp <= 27'b10000010xxxx0xxxx1010001000; // STR.imm
     10'b0000001101: cp <= 27'b10000010xxxx0xxxx0110001100; // LDR.imm
     10'b0000011100: cp <= 27'b0100xxxxxxxx1xxxx0xxxxxx001; // BX
     10'b0000001101: cp <= 27'bxxxx01000000100000xxxxxx011; // B.EQ
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.NE
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.CS
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.CC
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.MI
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.PL
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.VS
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.VC
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.HI
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.LS
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.GE
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.LT
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.GT
     10'b0000001101: cp <= 27'bxxxx01000000100010xxxxxx011; // B.LE
     10'b0000011100: cp <= 27'bxxxx10000000111100xxxxxx001; // B.AL
     default :       cp <= 27'bxxxxxxxx00000xxxx0xxxxxx00x; // default
endcase
end

endmodule
