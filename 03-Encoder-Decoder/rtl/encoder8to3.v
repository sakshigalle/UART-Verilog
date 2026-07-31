module encoder8to3(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    output A,
    output B,
    output C
);

assign A = I4 | I5 | I6 | I7;
assign B = I2 | I3 | I6 | I7;
assign C = I1 | I3 | I5 | I7;

endmodule