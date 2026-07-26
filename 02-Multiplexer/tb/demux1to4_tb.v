`timescale 1ns/1ps

module demux1to4_tb;

reg I;
reg S1;
reg S0;

wire Y0;
wire Y1;
wire Y2;
wire Y3;

demux1to4 uut(
    .I(I),
    .S1(S1),
    .S0(S0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    $dumpfile("demux1to4.vcd");
    $dumpvars(0, demux1to4_tb);

    $display("I S1 S0 | Y0 Y1 Y2 Y3");
    $monitor("%b %b  %b | %b  %b  %b  %b",
             I,S1,S0,Y0,Y1,Y2,Y3);

    I=1; S1=0; S0=0;
    #10;

    I=1; S1=0; S0=1;
    #10;

    I=1; S1=1; S0=0;
    #10;

    I=1; S1=1; S0=1;
    #10;

    I=0; S1=0; S0=0;
    #10;

    $finish;

end

endmodule