`include "DFF.v"

module USR(inputs,serialin,clk,reset,outputs, select);

input [4:1] inputs;
input serialin;
input [2:1]select;
input clk, reset;

wire [4:1]w;

output [4:1]outputs;

assign w[1] = ((~select[2])&(~select[1])&outputs[1]) | (select[2]&(~select[1])&outputs[2]) | ((~select[2])&select[1]&serialin) 		 | (select[2]&select[1]&inputs[1]);
assign w[2] = ((~select[2])&(~select[1])&outputs[2]) | (select[2]&(~select[1])&outputs[3]) | ((~select[2])&select[1]&outputs[1]) | (select[2]&select[1]&inputs[2]);
assign w[3] = ((~select[2])&(~select[1])&outputs[3]) | (select[2]&(~select[1])&outputs[4]) | ((~select[2])&select[1]&outputs[2]) | (select[2]&select[1]&inputs[3]);
assign w[4] = ((~select[2])&(~select[1])&outputs[4]) | (select[2]&(~select[1])&serialin) 		   | ((~select[2])&select[1]&outputs[3]) | (select[2]&select[1]&inputs[4]);

DFF dff_1(w[1], clk, reset, outputs[1]);
DFF dff_2(w[2], clk, reset, outputs[2]);
DFF dff_3(w[3], clk, reset, outputs[3]);
DFF dff_4(w[4], clk, reset, outputs[4]);

endmodule



module USR_eight(inputs,serialin,clk,reset,outputs, select);

input [8:1]inputs;
input serialin;
input [2:1]select;
input clk, reset;

wire [4:1]w;

output [8:1]outputs;

assign w[1] = ((~select[2])&(~select[1])&outputs[1]) | (select[2]&(~select[1])&outputs[2]) | ((~select[2])&select[1]&serialin) 		 | (select[2]&select[1]&inputs[5]);
assign w[2] = ((~select[2])&(~select[1])&outputs[2]) | (select[2]&(~select[1])&outputs[3]) | ((~select[2])&select[1]&outputs[1]) | (select[2]&select[1]&inputs[6]);
assign w[3] = ((~select[2])&(~select[1])&outputs[3]) | (select[2]&(~select[1])&outputs[4]) | ((~select[2])&select[1]&outputs[2]) | (select[2]&select[1]&inputs[7]);
assign w[4] = ((~select[2])&(~select[1])&outputs[4]) | (select[2]&(~select[1])&serialin) 		   | ((~select[2])&select[1]&outputs[3]) | (select[2]&select[1]&inputs[8]);

USR u1(inputs[4:1],serialin,clk,reset,outputs[4:1],select);
USR u2(w[4:1],serialin,clk,reset,outputs[8:5],select);
endmodule
