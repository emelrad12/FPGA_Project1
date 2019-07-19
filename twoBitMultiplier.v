module twoBitMultiplier (A0, A1, B0, B1, S0, S1, S2, S3, IZero);

input wire A0, A1, B0, B1, IZero;
output wire S0, S1, S2, S3;
wire A1t, A0t, B0t;
assign A1t = B1 & A1;
assign A0t = B1 & A0;
assign B0t = B0 & A1;
assign S0 = B0 & A0;

twoBitFullAdder twoBitAdd(
		.A0	(A0t),
		.A1	(A1t),
		.B0	(B0t),
		.B1	(IZero),
		.Ci   (IZero),
		.Co	(S3),
		.S0	(S1),
		.S1	(S2),
		.clk	(clkr)
	);
	
	
endmodule