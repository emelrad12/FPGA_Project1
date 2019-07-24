module thirtyTwoBitAdder (A, B, Ci, Co, S, Split);

input wire [0:31] A;
input wire [0:31] B;
input wire Ci,Split;
output wire [0:31] S;
output wire Co;
wire [0:15] arrayA1,arrayA2,arrayB1,arrayB2,arrayS1,arrayS2;
wire Tmpw1,Tmpw2,Tmpw3,Tmpw4;
assign arrayA1=A [0:15];
assign arrayA2=A [16:31];
assign arrayB1=B [0:15];
assign arrayB2=B [16:31];

sixteenBitAdder Adder1(
   .A        (arrayA1),
	.B        (arrayB1),   
	.Ci       (Ci),
	.Co       (Tmpw1),
	.S        (arrayS1),
	.Split    (Tmpw3)
	);
assign Tmpw2= (Split==1)?Tmpw1:0;
sixteenBitAdder Adder2(
   .A        (arrayA2),
	.B        (arrayB2),
	.Ci       (Tmpw2),
	.Co       (Co),
	.S        (arrayS2),
	.Split    (Tmpw4)
	);
	
assign S={arrayS1,arrayS2};
	
	
endmodule