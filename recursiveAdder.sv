module recursiveAdder (Aarr, Barr, clk, Sarr);
input wire Aarr[3:0], Barr[3:0], clk;
wire At, Bt;
reg Atr, Btr, Str, Citr, Cotr, S;
output Sarr[3:0];

recAdderInput recInput(Aarr, Barr, clk, Atr, Btr);
fullAdder adder(Atr, Btr, Citr, S, Cotr);
always @(posedge clk) begin
	Citr=Cotr;
end
RecAdderOutput recOutput(S, Sarr, ~clk);

endmodule