`timescale 10ns/1ps
module TB_CP_GEN;
reg  [9:0] OPCODE;
wire [3:0] REGSEL;
wire [3:0] IMMSEL;
wire [3:0] NZCVWRITE;
wire       R_BRANCH;
wire [3:0] COND;
wire       MEMRW;
wire       MEMTOREG;
wire [3:0] ALUOP;
wire       ALUSRC;
wire       REGWRITE;
wire       BSEL;
wire       C_BRANCH;

CP_GEN cp_gen
(
    .OPCODE    (OPCODE),
    .REGSEL    (REGSEL),
    .IMMSEL    (IMMSEL),
    .NZCVWRITE (NZCVWRITE),
    .R_BRANCH  (R_BRANCH),
    .COND      (COND),
    .MEMRW     (MEMRW),
    .MEMTOREG  (MEMTOREG),
    .ALUOP     (ALUOP),
    .ALUSRC    (ALUSRC),
    .REGWRITE  (REGWRITE),
    .BSEL      (BSEL),
    .C_BRANCH  (C_BRANCH)
);

initial begin
       OPCODE = 10'b0100000000; // AND
    #1 OPCODE = 10'b0100001100; // ORR
    #1 OPCODE = 10'b0100000001; // EOR
    #1 OPCODE = 10'b0000001100; // ADD.reg
    #1 OPCODE = 10'b0000001110; // ADD.imm
    #1 OPCODE = 10'b0000001100; // STR.imm
    #1 OPCODE = 10'b0000001101; // LDR.imm
    #1 OPCODE = 10'b0000011100; // BX
    #1 OPCODE = 10'b0000011100; // B.EQ ~ B.LE
    #1 OPCODE = 10'b0000011100; // B.AL
    #1;
    $finish();
end
endmodule
