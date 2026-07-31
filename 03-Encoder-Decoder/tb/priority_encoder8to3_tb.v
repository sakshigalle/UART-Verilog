`timescale 1ns/1ps

module priority_encoder8to3_tb;

reg I0, I1, I2, I3, I4, I5, I6, I7;
wire A, B, C;

priority_encoder8to3 uut (
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

    $dumpfile("priority_encoder8to3.vcd");
    $dumpvars(0, priority_encoder8to3_tb);

    $display("I7 I6 I5 I4 I3 I2 I1 I0 | A B C");

    $monitor("%b  %b  %b  %b  %b  %b  %b  %b | %b %b %b",
              I7, I6, I5, I4, I3, I2, I1, I0,
              A, B, C);

    // No input active
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b00000000; #10;

    // Single active inputs
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b00000001; #10; // I0
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b00000010; #10; // I1
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b00000100; #10; // I2
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b00001000; #10; // I3
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b00010000; #10; // I4
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b00100000; #10; // I5
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b01000000; #10; // I6
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b10000000; #10; // I7

    // Multiple active inputs (priority check)
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b00100100; #10; // I5 and I2 -> Output = 101
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b01001000; #10; // I6 and I3 -> Output = 110
    {I7,I6,I5,I4,I3,I2,I1,I0} = 8'b10010010; #10; // I7, I4 and I1 -> Output = 111

    $finish;

end

endmodule