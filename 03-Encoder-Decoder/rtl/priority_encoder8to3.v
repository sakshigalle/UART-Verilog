module priority_encoder8to3(
    input  I0,
    input  I1,
    input  I2,
    input  I3,
    input  I4,
    input  I5,
    input  I6,
    input  I7,
    output reg A,
    output reg B,
    output reg C
);

always @(*) begin
    if (I7)      {A,B,C} = 3'b111;
    else if (I6) {A,B,C} = 3'b110;
    else if (I5) {A,B,C} = 3'b101;
    else if (I4) {A,B,C} = 3'b100;
    else if (I3) {A,B,C} = 3'b011;
    else if (I2) {A,B,C} = 3'b010;
    else if (I1) {A,B,C} = 3'b001;
    else         {A,B,C} = 3'b000;
end

endmodule