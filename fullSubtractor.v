module fullSubtractor (A0 , B0, Bin, Bout, D0);

input wire A0, B0, Bin;
output wire Bout, D0;
wire Wtp1, Wtp2, Wtp3;

halfSubtractor haflSubtractor1 (
  .A0     (A0),
  .B0     (B0),
  .D0     (Wtp1),
  .Bout   (Wtp2)
  );
  
  halfSubtractor halfSubtractor2 (
  
  .A0     (Wtp1),
  .B0     (Bin),
  .D0     (D0),
  .Bout   (Wtp3)
  );

  assign Bout=Wtp2|Wtp3;

endmodule