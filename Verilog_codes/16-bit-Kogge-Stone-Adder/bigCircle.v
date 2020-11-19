module bigCircle(
    input Pi,
    input Gi,
    input Pprev,
    input Gprev,
    output P,
    output G
);
	
	wire w;
	
	and and0 (P, Pi, Pprev);
	and and1 (w, Pi, Gprev);
	or or0 (G, Gi, w);
	
endmodule
