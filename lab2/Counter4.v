module Counter4 (
	output reg [3:0] Q,
	input wire clk,
	input wire clr
);

initial begin
 Q = 4'b0000;
end

always @(posedge clk)
begin
	if (!clr | ( &Q ) ) Q = 4'b0000;  // if clear == 0 or Q == 4'b1111
	else Q = Q + 1'b1;
end

endmodule
