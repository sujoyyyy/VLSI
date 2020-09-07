`include "recursiveDouble.v"

module top;
	reg [31:0] A,B;
	wire [31:0] Sum;
	wire Carry;
	reg iniC;

	CLA cr(A,B,Sum,iniC,Carry);
	initial
		begin
			A[31:0]=32'd10000; B[31:0]=32'd20000; iniC = 1;
			#5 A[31:0]=32'd45000; B[31:0]=32'd4; iniC = 1;
			#5 A[31:0]= 32'd1; B[31:0]=32'd999; iniC = 1;
		end

	initial
		begin
			$monitor($time, ": A=%d B=%d Cin=%d, Sum=%d Carry=%d", A,B,iniC,Sum,Carry);
			$dumpfile("cla.vcd");
			$dumpvars;
		end

endmodule
