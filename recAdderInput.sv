module recAdderInput (Aarr, Barr, clk, A, B);
input wire Aarr[3:0], Barr[3:0], clk;
output wire A, B;
reg Atr, Btr;
integer count;
assign A=Aarr[1];
assign B=Aarr[0];

always @(posedge clk) begin

end
endmodule