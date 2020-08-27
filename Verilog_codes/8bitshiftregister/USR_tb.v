`include "uSR.v"

module top;

	wire[7:0] out;
	reg[7:0] pload;
	reg lftin,rghtin;
	reg[1:0] select;
	reg clk;

	eightBit usr0(out,pload,lftin,rghtin,select,clk);

	always #5 clk = ~clk;

	initial
	begin
		$monitor($time," SelectInputs = %2b ---- Parallelload = %8b --- lftin = %b, rghtin = %b, -- out = %8b",select,pload,lftin,rghtin,out);
	end

	initial
	begin	
		clk =0;select = 2'b11; pload = 8'b0000_0000; lftin = 1'b0; rghtin = 1'b0; 

		#10 select = 2'b11; pload = 8'b0001_0001;

		#10 select = 2'b11; pload = 8'b1111_0000;

		#10 select = 2'b11; pload = 8'b1010_0101; 

		#10 select = 2'b11; pload = 8'b1111_0000;

		#10 select = 2'b01; rghtin = 1'b0; 

		#10 select = 2'b01; rghtin = 1'b0; 

		#10 select = 2'b01; rghtin = 1'b0; 

		#10 select = 2'b01; rghtin = 1'b0; 

		#10 select = 2'b01; rghtin = 1'b0; 

		#10 select = 2'b10; lftin = 1'b1;

		#10 select = 2'b10; lftin = 1'b1;

		#10 select = 2'b10; lftin = 1'b1;

		#10 select = 2'b10; lftin = 1'b1;

		#10 select = 2'b10; lftin = 1'b1;

	end
	initial
	#140 $finish;
	initial
	begin
	  $dumpfile("USR.vcd");      
      $dumpvars;
    end                        
    
endmodule