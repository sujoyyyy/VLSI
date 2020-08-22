`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:43:06 08/16/2020 
// Design Name: 
// Module Name:    Ripple_adder_32_bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
// Defining a 1-bit Full Adder
module Full_1bit_Adder(sum, c_out, a, b, c_in);
	
	//Defining i/p and o/p variables
	input a, b, c_in;
	output sum, c_out;

	//Defining wires for internal signal transfers
	wire w1, w2, w3;

	//Defining logic
	xor(w1, a, b);
	and(w2, a, b);
	xor(sum, w1, c_in);
	and(w3, w1, c_in);
	or(c_out, w3, w2);

endmodule


// Defining a 4-bit Full Adder
module Full_4bit_Adder(sum, c_out, a, b, c_in);

	//Defining i/p and o/p variables
	output[3:0] sum;
	output c_out;
	input[3:0] a, b;
	input c_in;

	//Defining wires for internal signal transfers
	wire w1, w2, w3;

	//Using 1-bit Full Adders to define the logic for a 4-bit Full Adder
	Full_1bit_Adder fa_0(sum[0], w1, a[0], b[0], c_in);
	Full_1bit_Adder fa_1(sum[1], w2, a[1], b[1], w1);
	Full_1bit_Adder fa_2(sum[2], w3, a[2], b[2], w2);
	Full_1bit_Adder fa_3(sum[3], c_out, a[3], b[3], w3);

endmodule


// Defining a 16-bit full adder
module Full_16bit_Adder(sum, c_out, a, b, c_in);

	//Defining i/p and o/p variables
	output[15:0] sum;
	output c_out;
	input[15:0] a, b;
	input c_in;

	//Defining wires for internal signal transfers
	wire w1,w2,w3;

	//Using 4-bit Full Adders to define the logic for a 16-bit Full Adder
	Full_4bit_Adder fa4_0(sum[3:0], w1, a[3:0], b[3:0], c_in);
	Full_4bit_Adder fa4_1(sum[7:4], w2, a[7:4], b[7:4], w1);
	Full_4bit_Adder fa4_2(sum[11:8], w3, a[11:8], b[11:8], w2);
	Full_4bit_Adder fa4_3(sum[15:12], c_out, a[15:12], b[15:12], w3);

endmodule


// Defining a 32-bit full adder
module Full_32bit_Adder(sum, c_out, a, b, c_in);

	//Defining i/p and o/p variables
	input[31:0] a, b;
	input c_in;
	output[31:0] sum;
	output c_out;
	
	//Defining wire for internal signal transfers
	wire w1;

	//Using 16-bit Full Adders to define the logic for a 32-bit Full Adder
	Full_16bit_Adder fa16_0(sum[15:0], w1, a[15:0], b[15:0], c_in);
	Full_16bit_Adder fa16_1(sum[31:16], c_out, a[31:16], b[31:16], w1);

endmodule
