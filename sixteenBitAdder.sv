module sixteenBitAdder (A, B, Ci, Co, S, split);
input wire [0:15]A, B;
input wire Ci, split;
output wire [0:15]S;
output wire Co;
wire [0:7]inputOneFirstHalf, inputOneSecondHalf, inputTwoFirstHalf, inputTwoSecondHalf, OutputFirstHalf, OutputSecondHalf;
wire Ctr;
wire Ctr2;
assign inputOneFirstHalf=A[0:7];
assign inputOneSecondHalf=A[8:15];
assign inputTwoFirstHalf=B[0:7];
assign inputTwoSecondHalf=B[8:15];
eightBitAdder Adder1(inputOneFirstHalf, inputTwoFirstHalf, Ci, Ctr, OutputFirstHalf);
assign Ctr2= (split==1)?Ctr:0;
//condInput splitter(Ctr, split, Ctr2);
eightBitAdder Adder2(inputOneSecondHalf, inputTwoSecondHalf, Ctr2, Co, OutputSecondHalf);
assign S={OutputFirstHalf,OutputSecondHalf};
endmodule