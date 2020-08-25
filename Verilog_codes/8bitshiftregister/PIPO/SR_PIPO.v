`include "DFF.v"

module SR_PIPO(d,clk,reset,outputs, write_check);

input [4:1]d;
input write_check;
input clk, reset;

wire w[3:1];

output [4:1]outputs;

assign w[1] = (write_check&d[1]) | ((~write_check)&outputs[1]);
assign w[2] = (write_check&d[2]) | ((~write_check)&outputs[2]);
assign w[3] = (write_check&d[3]) | ((~write_check)&outputs[3]);

DFF dff_1(d[1], clk, reset, outputs[1]);
DFF dff_2(w[1], clk, reset, outputs[2]);
DFF dff_3(w[2], clk, reset, outputs[3]);
DFF dff_4(w[3], clk, reset, outputs[4]);

endmodule


module SR_PIPO_eight(d,clk,reset,outputs, write_check);

input [8:1]d;
input write_check;
input clk, reset;

wire [4:1]w;

output [8:1]outputs;

assign w[1] = (write_check&d[5]) | ((~write_check)&outputs[1]);
assign w[2] = (write_check&d[6]) | ((~write_check)&outputs[2]);
assign w[3] = (write_check&d[7]) | ((~write_check)&outputs[3]);
assign w[4] = (write_check&d[8]) | ((~write_check)&outputs[4]);


SR_PIPO dff_1(d[4:1], clk, reset, outputs[4:1],write_check);
SR_PIPO dff_2(w[4:1], clk, reset, outputs[8:5],write_check);


endmodule