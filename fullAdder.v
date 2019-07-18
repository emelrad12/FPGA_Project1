module fullAdder (  A0, B0, Ci, S0, Co );

input A0 , B0 ,  Ci;
output S0, Co;
wire A0 , B0 ,  Ci;
wire S0, hAdd1S, hAdd1C, hAdd2C,Co;

halfAdder hAdd1(
		.A0   (A0),
      .B0   (B0),
      .S0   (hAdd1S),
      .Co   (hAdd1C)
	);
halfAdder hAdd2(
		.A0   (hAdd1S),
      .B0   (Ci),
      .S0   (S0),
      .Co   (hAdd2C)
	);

assign Co = hAdd1C|hAdd2C;

endmodule