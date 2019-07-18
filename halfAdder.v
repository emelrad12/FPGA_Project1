module halfAdder ( A0, B0, S0, Co);

input A0, B0;
output wire S0, Co;
wire A0 , B0;
assign S0 = A0 ^ B0;
assign Co = A0 & B0;

endmodule