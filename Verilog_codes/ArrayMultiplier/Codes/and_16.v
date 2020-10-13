`include "and_4.v"
module and_16(
    input [15:0] in1,
    input in2,
    output [15:0] and_out
);
    and_4 a0(in1[3:0], in2, and_out[3:0]);
    and_4 a1(in1[7:4], in2, and_out[7:4]);
    and_4 a2(in1[11:8], in2, and_out[11:8]);
    and_4 a3(in1[15:12], in2, and_out[15:12]);
endmodule