`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:10 11/05/2020 
// Design Name: 
// Module Name:    triangle 
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
module triangle(
    input Pi,
    input Cprev,
    output Si
);
	
	xor xor0 (Si, Pi, Cprev);
	
endmodule
