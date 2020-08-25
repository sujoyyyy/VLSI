`include "DFF.v"

module SR_SIPO(d,clk,reset,q);

input d, clk, reset;
output [4:1] q;

DFF dff_1(d, clk, reset, q[1]);
DFF dff_2(q[1], clk, reset, q[2]);
DFF dff_3(q[2], clk, reset, q[3]);
DFF dff_4(q[3], clk, reset, q[4]);

endmodule


module SR_SIPO_eight(d,clk,reset,q);

input d, clk, reset;
output [8:1] q;

SR_SIPO dff_1(d, clk, reset, q[4:1]);
SR_SIPO dff_2(q[4], clk, reset, q[8:5]);


endmodule