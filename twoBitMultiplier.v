module twoBitMultiplier (A0, A1, B0, B1, S0, S1, S2, S3, IZero);

input wire A0, A1, B0, B1, IZero;
output wire S0, S1, S2, S3;
wire A1tmp, A0tmp, B0tmp;
assign A1tmp = B1 & A1;
assign A0tmp = B1 & A0;
assign B0tmp = B0 & A1;
assign S0 = B0 & A0;

twoBitFullAdder twoBitAdd(
		.A0	(A0tmp),
		.A1	(A1tmp),
		.B0	(B0tmp),
		.B1	(IZero),
		.Ci   (IZero),
		.Co	(S3),
		.S0	(S1),
		.S1	(S2)
	);
	
endmodule