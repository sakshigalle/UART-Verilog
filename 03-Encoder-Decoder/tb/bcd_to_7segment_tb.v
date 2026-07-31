`timescale 1ns/1ps

module bcd_to_7segment_tb;

reg [3:0] BCD;
wire [6:0] SEG;

bcd_to_7segment uut (
    .BCD(BCD),
    .SEG(SEG)
);

initial begin

    $dumpfile("bcd_to_7segment.vcd");
    $dumpvars(0, bcd_to_7segment_tb);

    BCD = 4'b0000; #10; // 0
    BCD = 4'b0001; #10; // 1
    BCD = 4'b0010; #10; // 2
    BCD = 4'b0011; #10; // 3
    BCD = 4'b0100; #10; // 4
    BCD = 4'b0101; #10; // 5
    BCD = 4'b0110; #10; // 6
    BCD = 4'b0111; #10; // 7
    BCD = 4'b1000; #10; // 8
    BCD = 4'b1001; #10; // 9

    $finish;

end

endmodule