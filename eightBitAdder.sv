module eightBitAdder (A,B,Ci,Co,S);

input wire [0:7]A;
input wire [0:7]B;
input wire Ci;
output wire Co;
output wire [0:7]S;
wire Tpmw;
wire [0:3]arrayA1,arrayA2,arrayB1,arrayB2,arrayS1,arrayS2;
assign arrayA1=A[0:3];
assign arrayA2=A[4:7];
assign arrayB1=B[0:3];
assign arrayB2=B[4:7];
fourBitFullAdder Adder1(
	.A    (arrayA1),
	.B    (arrayB1),
	.Ci   (Ci),
	.Co   (Tpmw),
	.S    (arrayS1)
);
fourBitFullAdder Adder2(
	.A    (arrayA2),
	.B    (arrayB2),
	.Ci   (Tpmw),
	.Co   (Co),
	.S    (arrayS2)
);
assign S={arrayS1,arrayS2};

endmodule