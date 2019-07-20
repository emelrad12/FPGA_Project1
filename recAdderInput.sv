module recAdderInput (Aarr, Barr, clk, A, B);
input wire Aarr[3:0], Barr[3:0], clk;
output wire A, B;
reg Atr, Btr;
byte count;
assign A=Atr;
assign B=Btr;

always @(posedge clk) begin
    Atr=Aarr[count];
    Btr=Barr[count];
	 count++;
end
endmodule