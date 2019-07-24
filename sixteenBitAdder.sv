module sixteenBitAdder (A, B, Ci, Co, S, split);
input wire [0:7]A, B;
input wire Ci, split;
output wire [0:15]S;
output wire Co;
wire inputFirstHalf,inputSecondHalf;
wire OutputFirstHalf, OutputSecondHalf;
reg carrytr;
assign inputFirstHalf=A[0:7];
assign inputSecondHalf=A[8:15];
assign OutputFirstHalf=B[0:7];
assign OutputSecondHalf=B[8:15];
assign S={inputFirstHalf,inputSecondHalf};
endmodule