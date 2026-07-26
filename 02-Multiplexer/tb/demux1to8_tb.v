`timescale 1ns/1ps

module demux1to8_tb;

reg I;
reg S2, S1, S0;

wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

demux1to8 uut(
    .I(I),
    .S2(S2),
    .S1(S1),
    .S0(S0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin

    $dumpfile("demux1to8.vcd");
    $dumpvars(0, demux1to8_tb);

    $display("I S2 S1 S0 | Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7");
    $monitor("%b %b  %b  %b | %b  %b  %b  %b  %b  %b  %b  %b",
             I,S2,S1,S0,
             Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);

    I=1; S2=0; S1=0; S0=0; #10;
    I=1; S2=0; S1=0; S0=1; #10;
    I=1; S2=0; S1=1; S0=0; #10;
    I=1; S2=0; S1=1; S0=1; #10;
    I=1; S2=1; S1=0; S0=0; #10;
    I=1; S2=1; S1=0; S0=1; #10;
    I=1; S2=1; S1=1; S0=0; #10;
    I=1; S2=1; S1=1; S0=1; #10;

    I=0; S2=0; S1=0; S0=0; #10;

    $finish;

end

endmodule