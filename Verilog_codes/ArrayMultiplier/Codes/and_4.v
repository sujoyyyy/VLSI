module and_4(
    input [3:0] in1,
    input in2,
    output [3:0] and_out
);
    and a0(and_out[0], in1[0], in2);
    and a1(and_out[1], in1[1], in2);
    and a2(and_out[2], in1[2], in2);
    and a3(and_out[3], in1[3], in2);
endmodule