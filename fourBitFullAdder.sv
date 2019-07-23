module fourBitFullAdder(A,B,Co,S,Ci);

input wire [0:3]A;
input wire [0:3]B;
input wire Ci;
output wire Co;
output wire [0:3]S;
wire Tmpw1,Tmpw2,Tmpw3;



fullAdder Adder0(
     .A0  (A[0]),
	  .B0  (B[0]),
	  .Ci  (Ci),
	  .Co  (Tmpw1),
	  .S0  (S[0])
	  );
fullAdder Adder1(
     .A0  (A[1]),
	  .B0  (B[1]),
	  .Ci  (Tmpw1),
	  .Co  (Tmpw2),
	  .S0  (S[1])
	  );
fullAdder Adder2(
     .A0  (A[2]),
	  .B0  (B[2]),
	  .Ci  (Tmpw2),
	  .Co  (Tmpw3),
	  .S0  (S[2])
	  );
fullAdder Adder3(
     .A0  (A[3]),
	  .B0  (B[3]),
	  .Ci  (Tmpw3),
	  .Co  (Co),
	  .S0  (S[3])
	  );
	  
endmodule
	  
	  