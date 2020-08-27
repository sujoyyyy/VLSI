//D flip flop
module DFF(Q,D,clk);
	output Q;
	input D, clk;

	wire w0, w1, w2, w3, Q_bar;
	
	nand nand00(w0, w1, w3);
	nand nand01(w1, w0, clk);
	nand nand10(w2, w1, w3, clk);
	nand nand11(w3, w2, D);
	nand nand1_0(Q, w1, Q_bar);
	nand nand1_1(Q_bar, w2, Q);

endmodule

// a 4X1 MUX to perform operation according to user input, 00- do nothing, 01- right shift, 10- left shift, 11- write;
module mux_4_1 (out, in0, in1, in2, in3, select);

	input in0,in1,in2,in3;
	input[1:0] select;
	output out;

	wire s0, s1, w0, w1, w2, w3;
	
	not n0(s0, select[0]);
	not n1(s1, select[1]);
	and and00(w0, s1, s0, in0);
	and and11(w1, s1, select[0], in1);
	and and22(w2, select[1], s0, in2);
	and and33(w3, select[1], select[0], in3);
	or out00(out, w0, w1, w2, w3);

endmodule 


//Universal shift register for 4 bits
module USR_4bit(out, pload, L_in, R_in, select, clk);


	output[3:0] out;
	input[3:0] pload;
	input L_in,R_in, clk;
	input[1:0] select;

	wire w0, w1, w2, w3;						

	DFF df3(out[3], w3, clk);
	DFF df2(out[2], w2, clk);
	DFF df1(out[1], w1, clk);
	DFF df0(out[0], w0, clk);

	mux_4_1 mx3(w3, out[3], R_in, out[2], pload[3], select);
	mux_4_1 mx2(w2, out[2], out[3], out[1], pload[2], select);
	mux_4_1 mx1(w1, out[1], out[2], out[0], pload[1], select);
	mux_4_1 mx0(w0, out[0], out[1], L_in,pload[0], select);

endmodule
//universal shift register in 8 bits using bottom up approach
//universal shift register in 8 bits using bottom up approach
module USR_8bit(out, pload, L_in, R_in, select, clk);


	output[7:0] out;
	input[7:0] pload;
	input L_in,R_in, clk;
	input[1:0] select;

	USR_4bit usr0(out[7:4], pload[7:4], out[3], R_in, select, clk);
	USR_4bit usr1(out[3:0], pload[3:0], L_in, out[4], select, clk);

endmodule
