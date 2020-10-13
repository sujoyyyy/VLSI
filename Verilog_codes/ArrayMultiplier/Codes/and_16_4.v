`include "and_16.v"
module and_16_4(
    input [15:0] in1,
    input [3:0] in2,
    output [15:0] and_out_0,
    output [15:0] and_out_1,
    output [15:0] and_out_2,
    output [15:0] and_out_3
);
    and_16 a0(in1, in2[0], and_out_0);
    and_16 a1(in1, in2[1], and_out_1);
    and_16 a2(in1, in2[2], and_out_2);
    and_16 a3(in1, in2[3], and_out_3);
endmodule