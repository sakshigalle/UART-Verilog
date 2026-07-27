`timescale 1ns/1ps

module encoder4to2_tb;

reg Y0, Y1, Y2, Y3;
wire A, B;

encoder4to2 uut(
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .A(A),
    .B(B)
);

initial begin

    $dumpfile("encoder4to2.vcd");
    $dumpvars(0, encoder4to2_tb);

    $display("Y0 Y1 Y2 Y3 | A B");
    $monitor("%b  %b  %b  %b | %b %b",
             Y0,Y1,Y2,Y3,A,B);

    Y0=1; Y1=0; Y2=0; Y3=0; #10;
    Y0=0; Y1=1; Y2=0; Y3=0; #10;
    Y0=0; Y1=0; Y2=1; Y3=0; #10;
    Y0=0; Y1=0; Y2=0; Y3=1; #10;

    $finish;

end

endmodule