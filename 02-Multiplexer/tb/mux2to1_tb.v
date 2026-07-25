`timescale 1ns/1ps

module mux2to1_tb;

reg A, B, S;
wire Y;

mux2to1 uut (
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("mux2to1.vcd");
    $dumpvars(0, mux2to1_tb);

    $display("S A B | Y");
    $monitor("%b %b %b | %b", S, A, B, Y);

    S = 0; A = 0; B = 0;
    #10 S = 0; A = 0; B = 1;
    #10 S = 0; A = 1; B = 0;
    #10 S = 0; A = 1; B = 1;

    #10 S = 1; A = 0; B = 0;
    #10 S = 1; A = 0; B = 1;
    #10 S = 1; A = 1; B = 0;
    #10 S = 1; A = 1; B = 1;

    #10 $finish;
end

endmodule