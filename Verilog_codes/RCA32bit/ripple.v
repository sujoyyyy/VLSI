`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:00 08/16/2020 
// Design Name: 
// Module Name:    ripple 
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
module full_adder(    //basic full adder module
    output s,
	 output cout,
	 input a,
	 input b,
	 input cin
	);
	 
	assign {cout,s} = a + b + cin;

endmodule





module four(sum,cout,a,b,cin); //4-bit adder
input [3:0] a,b;
input cin;
output [3:0]sum;
output cout;

   full_adder f1 (sum[0], cout0, a[0], b[0], cin);
   full_adder f2 (sum[1], cout1, a[1], b[1], cout0);
   full_adder f3 (sum[2], cout2, a[2], b[2], cout1);
   full_adder f4 (sum[3], cout, a[3], b[3], cout2);


endmodule





module bit16adder(        //16-bit adder
        output [15:0] S,
        output Cout,
        input [15:0] A, B,
        input Cin
        );    
             

        four cla0(S[3:0], C1, A[3:0], B[3:0], Cin);
        four cla1(S[7:4], C2,  A[7:4], B[7:4], C1);
        four cla2(S[11:8], C3,  A[11:8], B[11:8],C2);
        four cla3(S[15:12], Cout,  A[15:12], B[15:12], C3);

        
		  
endmodule





module RCA32(cout,s,cin,a,b);      //32-bit adder  
           input[31:0]a;
           input[31:0]b;
            input cin;
            output[31:0]s;
            output cout;
      
		
	bit16adder s1(s[15:0], carry_for_16_bits, a[15:0], b[15:0], cin);
   bit16adder  s2(s[31:16], cout, a[31:16], b[31:16], carry_for_16_bits);
   
				

endmodule