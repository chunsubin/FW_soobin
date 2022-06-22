
`timescale 10ns/1ps

module tb_half_adder;
reg X, Y;
wire SUM, CARRY;

Half_Adder myha(SUM, CARRY, X, Y);

initial 
begin
X=1'b0 ; Y = 1'b0;
#1 X=1'b0 ; Y = 1'b1;
#1 X=1'b1 ; Y = 1'b0;
#1 X=1'b1 ; Y = 1'b1;
#1 X=1'b0 ; Y = 1'b0;
#1 X=1'b0 ; Y = 1'b0;
end

endmodule
