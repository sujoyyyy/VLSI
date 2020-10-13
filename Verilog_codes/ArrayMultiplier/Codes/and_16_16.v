`include "and_16_4.v"
module and_16_16(
    input [15:0] in1,
    input [15:0] in2,
    output [15:0] and_out_0,
    output [15:0] and_out_1,
    output [15:0] and_out_2,
    output [15:0] and_out_3,
    output [15:0] and_out_4,
    output [15:0] and_out_5,
    output [15:0] and_out_6,
    output [15:0] and_out_7,
    output [15:0] and_out_8,
    output [15:0] and_out_9,
    output [15:0] and_out_10,
    output [15:0] and_out_11,
    output [15:0] and_out_12,
    output [15:0] and_out_13,
    output [15:0] and_out_14,
    output [15:0] and_out_15
);
    and_16_4 a0(in1, in2[3:0], and_out_0, and_out_1, and_out_2, and_out_3);
    and_16_4 a1(in1, in2[7:4], and_out_4, and_out_5, and_out_6, and_out_7);
    and_16_4 a2(in1, in2[11:8], and_out_8, and_out_9, and_out_10, and_out_11);
    and_16_4 a3(in1, in2[15:12], and_out_12, and_out_13, and_out_14, and_out_15);
endmodule