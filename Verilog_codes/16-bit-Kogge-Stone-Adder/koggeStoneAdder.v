`include "bigCircle.v"
`include "smallCircle.v"
`include "square.v"
`include "triangle.v"

module koggeStoneAdder(
    input [15:0] A,
    input [15:0] B,
    output [16:0] S
);

	wire Cin = 1'b0;
	wire [15:0] C;
	wire [15:0] P1, G1;
	square sq[15:0](A[15:0], B[15:0], P1[15:0], G1[15:0]);

	wire [15:1] P2, G2;
	smallCircle sC0(G1[0], C[0]);
	bigCircle bC0[15:1](P1[15:1], G1[15:1], P1[14:0], G1[14:0], P2[15:1], G2[15:1]);

	wire [15:3] P3, G3;
	smallCircle sC[2:1](G2[2:1], C[2:1]);
	bigCircle bC[15:3](P2[15:3], G2[15:3], P2[13:1], G2[13:1], P3[15:3], G3[15:3]);

	wire [15:7] P4, G4;
	smallCircle sC2[6:3](G3[6:3], C[6:3]);
	bigCircle bC2[15:7](P3[15:7], G3[15:7], P3[11:3], G3[11:3], P4[15:7], G4[15:7]);

	wire [15:15] P5, G5;
	smallCircle sC3[14:7](G4[14:7], C[14:7]);
	bigCircle bC3(P4[15], G4[15], P4[7], G4[7], P5[15], G5[15]);  

	smallCircle sC4(G5[15], C[15]);

	triangle t0(P1[0], Cin, S[0]);
	triangle t1[15:1](P1[15:1], C[14:0], S[15:1]);

	smallCircle sC5(C[15], S[16]);

endmodule
