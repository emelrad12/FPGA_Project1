module twoBitMultiplier (A0, A1, B0, B1, S0, S1, S2, S3, IZero, clk);

input wire A0, A1, B0, B1, IZero, clk;
output wire S0, S1, S2, S3;
wire A1tmp, A0tmp, B0tmp;
reg A1tmpr, A0tmpr, B0tmpr, S0r;

assign A1tmp = A1tmpr;
assign A0tmp = A0tmpr;
assign B0tmp = B0tmpr;
assign S0 = S0r;
always @(posedge clk) begin

A1tmpr = B1 & A1;
A0tmpr = B1 & A0;
B0tmpr = B0 & A1;
S0r = B0 & A0;

end
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