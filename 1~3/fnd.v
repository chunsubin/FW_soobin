
module fnd (
	output reg [6:0] hex0,   // 7'b gfedcba
	output reg [6:0] hex1,
	input  wire [3:0] sw0,   // 0~3
	input  wire [3:0] sw1

	);

	always @(sw0) begin
	case (sw0)
		4'b0000 : hex0 = 7'b1000000;  // 0
		4'b0001 : hex0 = 7'b1111001;  // 1
		4'b0010 : hex0 = 7'b0100100;  //2
		4'b0011 : hex0 = 7'b0110000;  //3
		4'b0100 : hex0 = 7'b0011001;  //4
		4'b0101 : hex0 = 7'b0010010;  //5
		4'b0110 : hex0 = 7'b0000010;  //6
		4'b0111 : hex0 = 7'b1111000;  //7
		4'b1000 : hex0 = 7'b0000000;  //8
		4'b1001 : hex0 = 7'b0010000;  //9
		
	endcase
	end
	
	
	always @(sw1) begin
	case (sw1)
		4'b0000 : hex1 = 7'b1000000;  // 0
		4'b0001 : hex1 = 7'b1111001;  // 1
		4'b0010 : hex1 = 7'b0100100;  //2
		4'b0011 : hex1 = 7'b0110000;  //3
		4'b0100 : hex1 = 7'b0011001;  //4
		4'b0101 : hex1 = 7'b0010010;  //5
		4'b0110 : hex1 = 7'b0000010;  //6
		4'b0111 : hex1 = 7'b1111000;  //7
		4'b1000 : hex1 = 7'b0000000;  //8
		4'b1001 : hex1 = 7'b0010000;  //9
		
	endcase
	end
	
endmodule
	


	