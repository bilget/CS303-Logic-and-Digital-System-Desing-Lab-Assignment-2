`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:20:11 11/19/2018
// Design Name:   hybrid_adder
// Module Name:   D:/bilge/Programs/Xilinx/Projects/lab3_trial2/test2.v
// Project Name:  lab3_trial2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hybrid_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2;

	// Inputs
	reg [17:0] a;
	reg [17:0] b;
	reg c0;

	// Outputs
	wire [17:0] s;
	wire [4:0] c;

	// Instantiate the Unit Under Test (UUT)
	hybrid_adder uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a=128;
		b=128;
	end
      
endmodule

