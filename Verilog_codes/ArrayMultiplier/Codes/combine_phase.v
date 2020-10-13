`include "and_16_16.v"
`include "adder_16bit.v"

module combine_phase(
    input [15:0] in1,
    input [15:0] in2,
    output [31:0] product
);
    wire [15:0] and_out_0;
    wire [15:0] and_out_1;
    wire [15:0] and_out_2;
    wire [15:0] and_out_3;
    wire [15:0] and_out_4;
    wire [15:0] and_out_5;
    wire [15:0] and_out_6;
    wire [15:0] and_out_7;
    wire [15:0] and_out_8;
    wire [15:0] and_out_9;
    wire [15:0] and_out_10;
    wire [15:0] and_out_11;
    wire [15:0] and_out_12;
    wire [15:0] and_out_13;
    wire [15:0] and_out_14;
    wire [15:0] and_out_15;

    and_16_16 anding(
        in1, 
        in2, 
        and_out_0,
        and_out_1,
        and_out_2,
        and_out_3,
        and_out_4,
        and_out_5,
        and_out_6,
        and_out_7,
        and_out_8,
        and_out_9,
        and_out_10,
        and_out_11,
        and_out_12,
        and_out_13,
        and_out_14,
        and_out_15
    );
    wire [15:0] temp_sum_0;
    wire [15:0] temp_sum_1;
    wire [15:0] temp_sum_2;
    wire [15:0] temp_sum_3;
    wire [15:0] temp_sum_4;
    wire [15:0] temp_sum_5;
    wire [15:0] temp_sum_6;
    wire [15:0] temp_sum_7;
    wire [15:0] temp_sum_8;
    wire [15:0] temp_sum_9;
    wire [15:0] temp_sum_10;
    wire [15:0] temp_sum_11;
    wire [15:0] temp_sum_12;
    wire [15:0] temp_sum_13;
    wire [15:0] temp_sum_14;
    wire cout_0;
    wire cout_1;
    wire cout_2;
    wire cout_3;
    wire cout_4;
    wire cout_5;
    wire cout_6;
    wire cout_7;
    wire cout_8;
    wire cout_9;
    wire cout_10;
    wire cout_11;
    wire cout_12;
    wire cout_13;
    wire cout_14;


    adder_16bit a0(and_out_0, and_out_1,  1'b0, temp_sum_0, cout_0);
    adder_16bit a1(temp_sum_0, and_out_2,  cout_0, temp_sum_1, cout_1);
    adder_16bit a2(temp_sum_1, and_out_3,  cout_1, temp_sum_2, cout_2);
    adder_16bit a3(temp_sum_2, and_out_4,  cout_2, temp_sum_3, cout_3);
    adder_16bit a4(temp_sum_3, and_out_5,  cout_3, temp_sum_4, cout_4);
    adder_16bit a5(temp_sum_4, and_out_6,  cout_4, temp_sum_5, cout_5);
    adder_16bit a6(temp_sum_5, and_out_7,  cout_5, temp_sum_6, cout_6);
    adder_16bit a7(temp_sum_6, and_out_8,  cout_6, temp_sum_7, cout_7);
    adder_16bit a8(temp_sum_7, and_out_9,  cout_7, temp_sum_8, cout_8);
    adder_16bit a9(temp_sum_8, and_out_10,  cout_8, temp_sum_9, cout_9);
    adder_16bit a10(temp_sum_9, and_out_11,  cout_9, temp_sum_10, cout_10);
    adder_16bit a11(temp_sum_10, and_out_12,  cout_10, temp_sum_11, cout_11);
    adder_16bit a12(temp_sum_11, and_out_13,  cout_11, temp_sum_12, cout_12);
    adder_16bit a13(temp_sum_12, and_out_14,  cout_12, temp_sum_13, cout_13);
    adder_16bit a14(temp_sum_13, and_out_15,  cout_13, temp_sum_14, cout_14);
    assign product[0] = and_out_0[0];
    assign product[1] = temp_sum_0[0];
    assign product[2] = temp_sum_1[0];
    assign product[3] = temp_sum_2[0];
    assign product[4] = temp_sum_3[0];
    assign product[5] = temp_sum_4[0];
    assign product[6] = temp_sum_5[0];
    assign product[7] = temp_sum_6[0];
    assign product[8] = temp_sum_7[0];
    assign product[9] = temp_sum_8[0];
    assign product[10] = temp_sum_9[0];
    assign product[11] = temp_sum_10[0];
    assign product[12] = temp_sum_11[0];
    assign product[13] = temp_sum_12[0];
    assign product[14] = temp_sum_13[0];
    assign product[30:15] = temp_sum_14[15:0];
    assign product[31] = cout_14;



endmodule