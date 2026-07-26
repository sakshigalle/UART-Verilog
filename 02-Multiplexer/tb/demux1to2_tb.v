`timescale 1ns/1ps

module demux1to2_tb;

reg I;
reg S;

wire Y0;
wire Y1;

demux1to2 uut(
    .I(I),
    .S(S),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin

    $dumpfile("demux1to2.vcd");
    $dumpvars(0, demux1to2_tb);

    $display("I S | Y0 Y1");
    $monitor("%b %b | %b  %b", I, S, Y0, Y1);

    I = 0; S = 0;
    #10;

    I = 1; S = 0;
    #10;

    I = 0; S = 1;
    #10;

    I = 1; S = 1;
    #10;

    $finish;

end

endmodule