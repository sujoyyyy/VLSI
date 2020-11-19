module square(
    input A,
    input B,
    output P,
    output G
);
	
	xor xor0 (P, A, B);
	and and0 (G, A, B);
	
endmodule
