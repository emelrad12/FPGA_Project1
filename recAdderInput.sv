module recAdderInput (Aarr, Barr, clk, A, B);
input wire Aarr[3:0], Barr[3:0], clk;
output wire A, B;
reg Atr, Btr;
integer count;
assign A=Atr;
assign B=Btr;

always @(posedge clk) begin
    count++;
    Atr=Aarr[count];
    Btr=Barr[count];
end
endmodule