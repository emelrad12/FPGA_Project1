module twoBitMultiplier (A0, A1, B0, B1, S0, S1, S2, S3, IZero, clk);

input wire A0, A1, B0, B1, IZero, clk;
output wire S0, S1, S2, S3;
wire A1t, A0t, B0t;
reg A1tr, A0tr, B0tr, S0r;

assign A1t = A1tr;
assign A0t = A0tr;
assign B0t = B0tr;
assign S0 = S0r;
always @(posedge clk) begin

A1tr = B1 & A1;
A0tr = B1 & A0;
B0tr = B0 & A1;
S0r = B0 & A0;

end
twoBitFullAdder twoBitAdd(
		.A0	(A0t),
		.A1	(A1t),
		.B0	(B0t),
		.B1	(IZero),
		.Ci   (IZero),
		.Co	(S3),
		.S0	(S1),
		.S1	(S2)
	);
	
	
endmodule