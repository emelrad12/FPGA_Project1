module RecAdderOutput (S, Sarr, clk);

input wire S,clk;
output wire Sarr[3:0];
reg Sarrt[3:0];
integer count;

assign Sarr=Sarrt;

always @ (posedge clk)
begin
	Sarrt[count]=S;
	count++;
end

endmodule
