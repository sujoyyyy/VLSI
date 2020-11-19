module triangle(
    input Pi,
    input Cprev,
    output Si
);
	
	xor xor0 (Si, Pi, Cprev);
	
endmodule
