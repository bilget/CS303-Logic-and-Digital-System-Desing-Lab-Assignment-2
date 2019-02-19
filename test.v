`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:29:40 11/19/2018
// Design Name:   ripple
// Module Name:   D:/bilge/Programs/Xilinx/Projects/lab3_trial2/test.v
// Project Name:  lab3_trial2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg x1;
	reg y1;
	reg x2;
	reg y2;
	reg x3;
	reg y3;
	reg x4;
	reg y4;
	reg x5;
	reg y5;
	reg x6;
	reg y6;
	reg x7;
	reg y7;
	reg x8;
	reg y8;
	reg x9;
	reg y9;
	reg x10;
	reg y10;
	reg x11;
	reg y11;
	reg x12;
	reg y12;
	reg x13;
	reg y13;
	reg x14;
	reg y14;
	reg x15;
	reg y15;
	reg x16;
	reg y16;
	reg x17;
	reg y17;
	reg x18;
	reg y18;
	reg t;

	// Outputs
	wire c;
	wire s1;
	wire s2;
	wire s3;
	wire s4;
	wire s5;
	wire s6;
	wire s7;
	wire s8;
	wire s9;
	wire s10;
	wire s11;
	wire s12;
	wire s13;
	wire s14;
	wire s15;
	wire s16;
	wire s17;
	wire s18;

	// Bidirs
	wire c1;
	wire c2;
	wire c3;
	wire c4;
	wire c5;
	wire c6;
	wire c7;
	wire c8;
	wire c9;
	wire c10;
	wire c11;
	wire c12;
	wire c13;
	wire c14;
	wire c15;
	wire c16;
	wire c17;

	// Instantiate the Unit Under Test (UUT)
	ripple uut (
		.x1(x1), 
		.y1(y1), 
		.x2(x2), 
		.y2(y2), 
		.x3(x3), 
		.y3(y3), 
		.x4(x4), 
		.y4(y4), 
		.x5(x5), 
		.y5(y5), 
		.x6(x6), 
		.y6(y6), 
		.x7(x7), 
		.y7(y7), 
		.x8(x8), 
		.y8(y8), 
		.x9(x9), 
		.y9(y9), 
		.x10(x10), 
		.y10(y10), 
		.x11(x11), 
		.y11(y11), 
		.x12(x12), 
		.y12(y12), 
		.x13(x13), 
		.y13(y13), 
		.x14(x14), 
		.y14(y14), 
		.x15(x15), 
		.y15(y15), 
		.x16(x16), 
		.y16(y16), 
		.x17(x17), 
		.y17(y17), 
		.x18(x18), 
		.y18(y18), 
		.t(t), 
		.c(c), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.s4(s4), 
		.s5(s5), 
		.s6(s6), 
		.s7(s7), 
		.s8(s8), 
		.s9(s9), 
		.s10(s10), 
		.s11(s11), 
		.s12(s12), 
		.s13(s13), 
		.s14(s14), 
		.s15(s15), 
		.s16(s16), 
		.s17(s17), 
		.s18(s18), 
		.c1(c1), 
		.c2(c2), 
		.c3(c3), 
		.c4(c4), 
		.c5(c5), 
		.c6(c6), 
		.c7(c7), 
		.c8(c8), 
		.c9(c9), 
		.c10(c10), 
		.c11(c11), 
		.c12(c12), 
		.c13(c13), 
		.c14(c14), 
		.c15(c15), 
		.c16(c16), 
		.c17(c17)
	);

	initial begin
		// Initialize Inputs
		x1 = 0;
		y1 = 0;
		x2 = 0;
		y2 = 0;
		x3 = 0;
		y3 = 0;
		x4 = 0;
		y4 = 0;
		x5 = 0;
		y5 = 0;
		x6 = 0;
		y6 = 0;
		x7 = 0;
		y7 = 0;
		x8 = 0;
		y8 = 0;
		x9 = 0;
		y9 = 0;
		x10 = 0;
		y10 = 0;
		x11 = 0;
		y11 = 0;
		x12 = 0;
		y12 = 0;
		x13 = 0;
		y13 = 0;
		x14 = 0;
		y14 = 0;
		x15 = 0;
		y15 = 0;
		x16 = 1;
		y16 = 1;
		x17 = 0;
		y17 = 0;
		x18 = 0;
		y18 = 0;
		t = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

