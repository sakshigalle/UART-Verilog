module demux1to2(
    input I,
    input S,
    output Y0,
    output Y1
);

assign Y0 = (~S) ? I : 1'b0;
assign Y1 = ( S) ? I : 1'b0;

endmodule