`include "koggeStoneAdder.v"

module top;
	
	reg [15:0] a,b;
	wire [16:0] sum;
		
	assign cin=1'b0;
	
	initial
	begin
		$dumpfile("koggeStoneAdder.vcd");
		$dumpvars(0,top);
	end
	
	koggeStoneAdder KS(a,b,sum);
	
	initial
		begin
			#10;
			#10
			a=16'd15;
			b=16'd8;
			
			#10;
			#10
			a=16'd200;
			b=16'd490;
			
			#10;
			#10
			a=16'd1981;
			b=16'd5196;
			
			#10;
			#10
			a=16'd5158;
			b=16'd25000;
			
				
			#10;
			#10
			a=16'd32768;
			b=16'd32767;
		end
		
	initial
		begin
			$monitor($time,"\ta=%d;\tb=%d;\tsum=%d;\n",a,b,sum);
		end
	
endmodule
