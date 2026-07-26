`timescale 1ns/1ps

module mux8to1_tb;

reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S2, S1, S0;
wire Y;

mux8to1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .S2(S2),
    .S1(S1),
    .S0(S0),
    .Y(Y)
);

initial begin

    $dumpfile("mux8to1.vcd");
    $dumpvars(0, mux8to1_tb);

    $display("S2 S1 S0 | Y");
    $monitor("%b  %b  %b | %b", S2, S1, S0, Y);

    // Fixed input values
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 1;
    I4 = 1;
    I5 = 0;
    I6 = 1;
    I7 = 0;

    // Test all select combinations
    S2 = 0; S1 = 0; S0 = 0;
    #10 S2 = 0; S1 = 0; S0 = 1;
    #10 S2 = 0; S1 = 1; S0 = 0;
    #10 S2 = 0; S1 = 1; S0 = 1;
    #10 S2 = 1; S1 = 0; S0 = 0;
    #10 S2 = 1; S1 = 0; S0 = 1;
    #10 S2 = 1; S1 = 1; S0 = 0;
    #10 S2 = 1; S1 = 1; S0 = 1;

    #10 $finish;

end

endmodule