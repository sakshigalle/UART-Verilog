`timescale 1ns/1ps
module nand_gate_tb;
reg A, B;
wire Y;
 nand_gate uut(
    .A(A),
    .B(B),
    .Y(Y)
 );
initial begin
$dumpfile("nand_gate.vcd");
$dumpvars(0, nand_gate_tb);
$display("A B | Y");
$monitor("%b %b | %b", A, B, Y);
 
 A = 0; B = 0;
#10 A = 0; B = 1;
#10 A = 1; B = 0;
#10 A = 1; B = 1;

#10 $finish;
end
endmodule