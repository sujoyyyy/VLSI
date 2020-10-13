`include "full_adder_4bit.v"
`include "half_adder.v"
module adder_16bit(
    input [15:0] in1,
    input [15:0] in2,
    input prev_cout,
    output [15:0] sum, 
    output cout
);
    wire w[5:0];
    half_adder h1(in1[1], in2[0], sum[0], w[0]);
    full_adder_4bit f4_1(in1[5:2], in2[4:1], w[0], sum[4:1], w[1]);
    full_adder_4bit f4_2(in1[9:6], in2[8:5], w[1], sum[8:5], w[2]);
    full_adder_4bit f4_3(in1[13:10], in2[12:9], w[2], sum[12:9], w[3]);
    full_adder_1bit f1_1(in1[14], in2[13], w[3], sum[13], w[4]);
    full_adder_1bit f1_2(in1[15], in2[14], w[4], sum[14], w[5]);
    full_adder_1bit f1_3(prev_cout, in2[15], w[5], sum[15], cout);


endmodule