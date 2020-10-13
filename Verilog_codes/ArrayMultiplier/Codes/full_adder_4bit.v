`include "full_adder_1bit.v"
module full_adder_4bit(
    input [3:0] in1,
    input [3:0] in2,
    input cin,
    output [3:0] sum,
    output cout
);
    wire [2:0] w;
    full_adder_1bit f1(in1[0], in2[0], cin, sum[0], w[0]);
    full_adder_1bit f2(in1[1], in2[1], w[0], sum[1], w[1]);
    full_adder_1bit f3(in1[2], in2[2], w[1], sum[2], w[2]);
    full_adder_1bit f4(in1[3], in2[3], w[2], sum[3], cout);

endmodule