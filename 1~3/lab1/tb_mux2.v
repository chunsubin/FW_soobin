`timescale 10ns/1ps

module tb_mux2;

reg IN0, IN1, IN2, IN3;
reg S0, S1;
wire OUT;

//Form : MUX4_to_1( OUT, I0, I1, I2, I3, S1, S0  );
MUX4_to_1 mymux_version2 (OUT, IN0, IN1, IN2, IN3, S1, S0);

 initial
 begin
	IN0 = 1'b1; IN1 = 1'b0; IN2 = 1'b1; IN3 = 1'b0;
	S1 = 1'b0; S0 = 1'b0;
	# 1
	S1 = 1'b0; S0 = 1'b1; 
	# 1
	S1 = 1'b1; S0 = 1'b0;  
	# 1
	S1 = 1'b1; S0 = 1'b1; 
	# 5
	$finish;
 end

endmodule
