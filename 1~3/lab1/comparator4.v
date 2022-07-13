
module comparator4 (
 output wire GT,
 output wire EQ,
 output wire LT,
 input  wire [3:0] A,
 input  wire [3:0] B,
 input  Enable
 );

 assign GT = ((A>B)  & Enable)  ? 1 : 0;
 assign EQ = ((A==B) & Enable)  ? 1 : 0;
 assign LT = ((A<B)  & Enable)  ? 1 : 0;
  
endmodule
