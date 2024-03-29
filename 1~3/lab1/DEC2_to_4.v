module DEC2_to_4 (
 output wire [3:0] Dout,
 input  wire [1:0] Din,
 input  wire       Enable
);
 
 assign Dout = (Dout && Enable) ? (4'b0001 << Din) : 0;

endmodule

 
