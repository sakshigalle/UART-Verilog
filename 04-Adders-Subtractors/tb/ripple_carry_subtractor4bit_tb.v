`timescale 1ns/1ps

module ripple_carry_subtractor4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg Bin;

wire [3:0] Difference;
wire Bout;

ripple_carry_subtractor4bit uut(
    .A(A),
    .B(B),
    .Bin(Bin),
    .Difference(Difference),
    .Bout(Bout)
);

initial begin

    $dumpfile("ripple_carry_subtractor4bit.vcd");
    $dumpvars(0, ripple_carry_subtractor4bit_tb);

    $display(" A     B    Bin | Difference Bout");
    $monitor("%b %b  %b |    %b      %b",
             A, B, Bin, Difference, Bout);

    A=4'b0101; B=4'b0011; Bin=0; #10; // 5-3=2
    A=4'b1000; B=4'b0010; Bin=0; #10; // 8-2=6
    A=4'b1111; B=4'b0001; Bin=0; #10; // 15-1=14
    A=4'b0110; B=4'b0110; Bin=0; #10; // 6-6=0
    A=4'b0011; B=4'b0101; Bin=0; #10; // Borrow case
    A=4'b0000; B=4'b0001; Bin=0; #10; // Borrow case

    $finish;

end

endmodule