`include "SR_PISO.v"

module SR_PISO_tb;

reg clk, reset, write;
wire q;

reg [8:1] inp;

initial
	begin
		$dumpfile("SR_PISO_tb.vcd");
		$dumpvars(0, SR_PISO_tb);
	end

SR_PISO_eight srPISO(inp, clk, reset, q, write);


initial
	begin
		reset=0;
		clk =0;
		   write = 1;inp = 8'b00000000;
		#5 write = 1;inp = 8'b00100010;
		#5 write = 1;inp = 8'b00011110;
		#5 write = 1;inp = 8'b10100001;
		#5 write = 1;inp = 8'b00001010;
		#5 write = 1;inp = 8'b01101111;
		#5 write = 1;inp = 8'b00010000;
		#5 write = 1;inp = 8'b00101110;
		#5 write = 1;inp = 8'b00000011;
		#5 write = 1;inp = 8'b00100100;
		#5 write = 1;inp = 8'b00011000;
	end

always #5  
	clk =  ! clk; 

initial
	$monitor($time, ": clk=%b, rst=%b, inp=%b, q=%b\n", clk, reset, inp, q);

initial
	#60 $finish;

endmodule
