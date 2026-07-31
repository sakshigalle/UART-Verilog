`timescale 1ns/1ps

module encoder8to3_tb;

reg I0,I1,I2,I3,I4,I5,I6,I7;
wire A,B,C;

encoder8to3 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .A(A),
    .B(B),
    .C(C)
);

initial begin

    $dumpfile("encoder8to3.vcd");
    $dumpvars(0,encoder8to3_tb);

    // I0 active
    {I0,I1,I2,I3,I4,I5,I6,I7}=8'b10000000; #10;

    // I1 active
    {I0,I1,I2,I3,I4,I5,I6,I7}=8'b01000000; #10;

    // I2 active
    {I0,I1,I2,I3,I4,I5,I6,I7}=8'b00100000; #10;

    // I3 active
    {I0,I1,I2,I3,I4,I5,I6,I7}=8'b00010000; #10;

    // I4 active
    {I0,I1,I2,I3,I4,I5,I6,I7}=8'b00001000; #10;

    // I5 active
    {I0,I1,I2,I3,I4,I5,I6,I7}=8'b00000100; #10;

    // I6 active
    {I0,I1,I2,I3,I4,I5,I6,I7}=8'b00000010; #10;

    // I7 active
    {I0,I1,I2,I3,I4,I5,I6,I7}=8'b00000001; #10;

    $finish;

end

endmodule