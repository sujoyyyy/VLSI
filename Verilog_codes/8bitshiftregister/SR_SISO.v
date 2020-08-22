module DFF(d,clk,reset,q);
input clk, reset;
input wire d;
output reg q;

always@(negedge clk or posedge reset)
begin
	if(reset)
 		q <= 1'b0;
	else
		q <= d;
end

endmodule


module SR_SISO(d,clk,reset,q);

input d, clk, reset;
output q;

wire w1, w2, w3;

DFF dff_1(d, clk, reset, w1);
DFF dff_2(w1, clk, reset, w2);
DFF dff_3(w2, clk, reset, w3);
DFF dff_4(w3, clk, reset, q);

endmodule
