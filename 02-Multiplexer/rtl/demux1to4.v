module demux1to4(
    input I,
    input S1,
    input S0,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

assign Y0 = (~S1 & ~S0) ? I : 1'b0;
assign Y1 = (~S1 &  S0) ? I : 1'b0;
assign Y2 = ( S1 & ~S0) ? I : 1'b0;
assign Y3 = ( S1 &  S0) ? I : 1'b0;

endmodule