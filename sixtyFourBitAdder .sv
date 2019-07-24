module sixtyFourBitAdder (A, B, Ci, Co, S, split16, split32, split64);
input wire [0:63]A, B;
input wire Ci, split16, split32, split64;
output wire [0:63]S;
output wire Co;
wire [0:31]inputOneFirstHalf, inputOneSecondHalf, inputTwoFirstHalf, inputTwoSecondHalf, OutputFirstHalf, OutputSecondHalf;
wire Ctr;
wire Ctr2;
assign inputOneFirstHalf=A[0:31];
assign inputOneSecondHalf=A[32:63];
assign inputTwoFirstHalf=B[0:31];
assign inputTwoSecondHalf=B[32:63];
thirtyTwoBitAdder Adder1(inputOneFirstHalf, inputTwoFirstHalf, Ci, Ctr, OutputFirstHalf, split16, split32 );
condInput splitter(Ctr, split64, Ctr2);
thirtyTwoBitAdder Adder2(inputOneSecondHalf, inputTwoSecondHalf, Ctr2, Co, OutputSecondHalf, split16, split32);
assign S={OutputFirstHalf,OutputSecondHalf};
endmodule