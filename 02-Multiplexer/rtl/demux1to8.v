module demux1to8(
    input I,
    input S2,
    input S1,
    input S0,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
);

assign Y0 = (~S2 & ~S1 & ~S0) ? I : 1'b0;
assign Y1 = (~S2 & ~S1 &  S0) ? I : 1'b0;
assign Y2 = (~S2 &  S1 & ~S0) ? I : 1'b0;
assign Y3 = (~S2 &  S1 &  S0) ? I : 1'b0;
assign Y4 = ( S2 & ~S1 & ~S0) ? I : 1'b0;
assign Y5 = ( S2 & ~S1 &  S0) ? I : 1'b0;
assign Y6 = ( S2 &  S1 & ~S0) ? I : 1'b0;
assign Y7 = ( S2 &  S1 &  S0) ? I : 1'b0;

endmodule