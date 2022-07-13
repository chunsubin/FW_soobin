
`timescale 10ns/1ps

module tb_full_adder;

reg X,Y,CARRY_IN;
wire SUM, CARRY_OUT;

Full_Adder myfa (SUM, CARRY_OUT, X, Y, CARRY_IN);

initial begin
X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
#1  X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
#1  X = 1'b0; Y = 1'b1; CARRY_IN = 1'b1;
#1  X = 1'b1; Y = 1'b0; CARRY_IN = 1'b0;
#1  X = 1'b1; Y = 1'b1; CARRY_IN = 1'b0;
#1  X = 1'b1; Y = 1'b1; CARRY_IN = 1'b1;
#1  X = 1'b0; Y = 1'b1; CARRY_IN = 1'b1;
#1  X = 1'b0; Y = 1'b0; CARRY_IN = 1'b1;
#1  X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
end

endmodule
