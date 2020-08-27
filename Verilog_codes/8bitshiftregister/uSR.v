//D flip flop
module dFF(q,D,clk);
	output q;
	input D, clk;

	wire o0_0,o0_1,o0_2,o0_3;
	nand n0_0(o0_0,o0_1,o0_3);
	nand n0_1(o0_1,o0_0,clk);
	nand no_2(o0_2,o0_1,o0_3,clk);
	nand no_3(o0_3,o0_2,D);
	wire Qn;
	nand n1_0(q,o0_1,Qn);
	nand n1_1(Qn,o0_2,q);

endmodule

// a 4X1 MUX to perform operation according to user input, 00- do nothing, 01- right shift, 10- left shift, 11- write;
module mux_4to1 (out,i0,i1,i2,i3,select);

	input i0,i1,i2,i3;
	input[1:0] select;
	output out;

	wire s0_not, s1_not;
	not n0(s0_not,select[0]);
	not n1(s1_not,select[1]);
	wire a0,a1,a2,a3;
	and a0_0(a0,s1_not,s0_not,i0);
	and a0_1(a1,s1_not,select[0],i1);
	and a0_2(a2,select[1],s0_not,i2);
	and a0_3(a3,select[1],select[0],i3);
	or o0_0(out,a0,a1,a2,a3);

endmodule 

//Universal shift register for 4 bits
module fourBit(out,pload,lftin,rghtin,select,clk);


	output[3:0] out;
	input[3:0] pload;
	input lftin,rghtin;
	input[1:0] select;
	input clk;

	wire o0,o1,o2,o3;						

	dFF df3(out[3],o3,clk);
	dFF df2(out[2],o2,clk);
	dFF df1(out[1],o1,clk);
	dFF df0(out[0],o0,clk);

	mux_4to1 mx3(o3,out[3],rghtin,out[2],pload[3],select);
	mux_4to1 mx2(o2,out[2],out[3],out[1],pload[2],select);
	mux_4to1 mx1(o1,out[1],out[2],out[0],pload[1],select);
	mux_4to1 mx0(o0,out[0],out[1],lftin,pload[0],select);

endmodule

//universal shift register in 8 bits using bottom up approach
module eightBit(out,pload,lftin,rghtin,select,clk);


	output[7:0] out;
	input[7:0] pload;
	input lftin,rghtin;
	input[1:0] select;
	input clk;

	fourBit fb_usr0(out[7:4],pload[7:4],out[3],rghtin,select,clk);
	fourBit fb_usr1(out[3:0],pload[3:0],lftin,out[4],select,clk);

endmodule