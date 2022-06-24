
module light(
	input wire [17:0] sw,
	output wire [17:0] led
	);
	
	assign led = 18'b11111111_11111111_11 & sw;
	
	
	end case
	
endmodule


