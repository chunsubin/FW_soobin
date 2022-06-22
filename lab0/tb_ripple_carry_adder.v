
`timescale 10ns/1ps

module tb_ripple_carry_adder;

reg [3:0] X;
reg [3:0] Y;
reg       CARRY_IN;
wire [3:0] SUM;
wire      CARRY_OUT;

fulladder4b fa4b (SUM, CARRY_OUT, X, Y, CARRY_IN);

initial begin
/*
X=4'b0000; Y=4'b0000; CARRY_IN = 1'b0;
#1 X=4'b0000; Y=4'b0001; CARRY_IN = 1'b0;
#1 X=4'b0000; Y=4'b0001; CARRY_IN = 1'b0;
#1 X=4'b1100; Y=4'b0011; CARRY_IN = 1'b0;
#1 X=4'b1100; Y=4'b0011; CARRY_IN = 1'b1;
#1 X=4'b1111; Y=4'b1111; CARRY_IN = 1'b1;*/

X=4'b0000; Y=4'b0000; CARRY_IN = 1'b0;  // carry_in ??? ??
# 1 X=4'b0100; Y=4'b1000;
# 1 X=4'b0011; Y=4'b0111;
# 1 X=4'b1100; Y=4'b0101;
# 1 X=4'b0011; Y=4'b1100;

# 10;
end

endmodule

