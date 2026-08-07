module ripple_carry_subtractor4bit(
    input [3:0] A,
    input [3:0] B,
    input Bin,
    output [3:0] Difference,
    output Bout
);

wire B1, B2, B3;

full_subtractor FS0(
    .A(A[0]),
    .B(B[0]),
    .Bin(Bin),
    .Difference(Difference[0]),
    .Borrow(B1)
);

full_subtractor FS1(
    .A(A[1]),
    .B(B[1]),
    .Bin(B1),
    .Difference(Difference[1]),
    .Borrow(B2)
);

full_subtractor FS2(
    .A(A[2]),
    .B(B[2]),
    .Bin(B2),
    .Difference(Difference[2]),
    .Borrow(B3)
);

full_subtractor FS3(
    .A(A[3]),
    .B(B[3]),
    .Bin(B3),
    .Difference(Difference[3]),
    .Borrow(Bout)
);

endmodule