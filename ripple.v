`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:02 11/19/2018 
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

module full_adder(x, y, t, s, c);

input x, y, t;
output s, c;

wire a, b, d;

xor (s, x, y, t);
and (a, x, y);
xor (b, x, y);
and (d, b, t);
or (c, a, d);

endmodule

module ripple(input x1, input y1, input x2, input y2, input x3, input y3, input x4, input y4, input x5, input y5, input x6, input y6, input x7, input y7, input x8, input y8,
					input x9, input y9, input x10, input y10, input x11, input y11, input x12, input y12, input x13, input y13, input x14, input y14, input x15, input y15, input x16, input y16,
					input x17, input y17, input x18, input y18, input t, output c, output s1, output s2, output s3, output s4, output s5, output s6, output s7, output s8, output s9,	output s10, 
					output s11, output s12, output s13, output s14, output s15, output s16, output s17, output s18, inout c1, inout c2, inout c3, inout c4, inout c5, inout c6, inout c7, inout c8, 
					inout c9, inout c10, inout c11, inout c12, inout c13, inout c14, inout c15, inout c16, inout c17);

full_adder f1(x1, y1, c1, s1, c);
full_adder f2(x2, y2, c2, s2, c1);
full_adder f3(x3, y3, c3, s3, c2);
full_adder f4(x4, y4, c4, s4, c3);
full_adder f5(x5, y5, c5, s5, c4);
full_adder f6(x6, y6, c6, s6, c5);
full_adder f7(x7, y7, c7, s7, c6);
full_adder f8(x8, y8, c8, s8, c7);
full_adder f9(x9, y9, c9, s9, c8);
full_adder f10(x10, y10, c10, s10, c9);
full_adder f11(x11, y11, c11, s11, c10);
full_adder f12(x12, y12, c12, s12, c11);
full_adder f13(x13, y13, c13, s13, c12);
full_adder f14(x14, y14, c14, s14, c13);
full_adder f15(x15, y15, c15, s15, c14);
full_adder f16(x16, y16, c16, s16, c15);
full_adder f17(x17, y17, c17, s17, c16);
full_adder f18(x18, y18, t, s18, c17);




endmodule


