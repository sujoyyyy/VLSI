`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:01:39 11/05/2020 
// Design Name: 
// Module Name:    bigCircle 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
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
