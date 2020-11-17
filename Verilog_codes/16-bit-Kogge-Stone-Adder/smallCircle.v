`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:04 11/05/2020 
// Design Name: 
// Module Name:    smallCircle 
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
module smallCircle(
    input Gi,
    output Ci
);
	
	buf buf0 (Ci, Gi);
	
endmodule
