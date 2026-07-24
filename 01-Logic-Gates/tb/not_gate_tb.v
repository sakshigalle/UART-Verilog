`timescale 1ns/1ps

module not_gate_tb;

reg A;
wire Y;

not_gate uut (
    .A(A),
    .Y(Y)
);

initial begin
    $dumpfile("not_gate.vcd");
    $dumpvars(0, not_gate_tb);

    $display("A | Y");
    $monitor("%b | %b", A, Y);

    A = 0;
    #10 A = 1;
    #10 $finish;
end

endmodule