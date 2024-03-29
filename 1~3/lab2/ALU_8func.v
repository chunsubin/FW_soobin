module ALU_8func (
	output reg [3:0] OUT,
	input  wire [3:0] IN0,
	input  wire [3:0] IN1,
	input  wire [2:0] SEL
);

always @(*)
begin
	case (SEL)
	3'b000 : OUT = IN0;
	3'b001 : OUT = IN0 + IN1;
	3'b010 : OUT = IN0 - IN1;
	3'b011 : OUT = IN0 / IN1;
	3'b100 : OUT = IN0 % IN1;
	3'b101 : OUT = IN0 << 1;
	3'b110 : OUT = IN0 >> 1;
	3'b111 : OUT = (IN0>IN1);
	default : OUT = 1'bx;	
	endcase
end

endmodule