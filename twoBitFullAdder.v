module twoBitFullAdder (A0, A1, B0, B1, S0, S1, Co, Ci, clk);

input wire A0, A1, B0, B1, Ci, clk;
output wire S0,S1, Co;
wire fAdd1C;
reg fAdd1Cr;
fullAdder fAdd1(
		.A0   (A0),
      .B0   (B0),
		.Ci   (Ci),
      .S0   (S0),
      .Co   (fAdd1C)
	);
fullAdder fAdd12(
		.A0   (A1),
      .B0   (B1),
		.Ci   (fAdd1C),
      .S0   (S1),
      .Co   (Co)
	);
	
endmodule