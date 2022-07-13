
// dataflow logical 4to1mux
/*
module MUX4_to_1(
 output wire out,
 input  wire I0, I1, I2, I3,
 input  wire S1, S0 
 );

 assign out = (~S1 & ~S0 & I0) | (~S1 & S0 * I1) | (S1 & ~S0 & I2) | (S1 & S0 & I3);

endmodule
*/


// dataflow contditional 4to1mux
///*
module MUX4_to_1 (
 output wire out,
 input  wire I0, I1, I2, I3,
 input  wire S1, S0
);

 assign out = S1 ? (S0 ? I3 : I2) : (S0 ? I1 : I0);

endmodule
//*/