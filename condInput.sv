module condInput (in, cond, out );
input wire in, cond;
output wire out;
wire temp1;
assign temp1=!(in&cond);
assign out=in&temp1;
endmodule