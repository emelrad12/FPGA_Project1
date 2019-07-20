module halfSubtractor (A0, B0, D0, Bout);

input wire A0, B0;
output wire D0, Bout;

assign D0=A0^B0;
assign Bout=~A0&B0;

endmodule