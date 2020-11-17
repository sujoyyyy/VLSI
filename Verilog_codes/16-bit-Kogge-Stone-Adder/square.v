`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:03 11/05/2020 
// Design Name: 
// Module Name:    square 
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
module square(
    input A,
    input B,
    output P,
    output G
);
	
	xor xor0 (P, A, B);
	and and0 (G, A, B);
	
endmodule
