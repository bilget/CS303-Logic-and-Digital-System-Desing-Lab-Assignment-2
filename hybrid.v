`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:53 11/19/2018 
// Design Name: 
// Module Name:    hybrid 
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
module four_carry_lookahead_adder(a0, b0, a1, b1, a2, b2, a3, b3, c0, s0, s1, s2, s3, c4);
	input a0, b0, a1, b1, a2, b2, a3, b3, c0;
	wire c1, c2, c3, g0, g1, g2, g3, p0, p1, p2, p3, d0, d1, d12, d2, d22, d23, d3, d32, d33, d34;
	output s0, s1, s2, s3, c4;
	
	
	xor(p0, a0, b0);
	and(g0, a0, b0);
	xor(p1, a1, b1);
	and(g1, a1, b1);
	xor(p2, a2, b2);
	and(g2, a2, b2);
	xor(p3, a3, b3);
	and(g3, a3, b3);

	and(d0, c0, p0);
	or(c1, d0, g0);
	
	and(d1, c0, p0, p1);
	and(d12, p1, g0);
	or(c2, d1, d12, g1);
	
	and(d2, c0, p0, p1, p2);
	and(d22, g0, p1, p2);
	and(d23, g1, p2);
	or(c3, d2, d22, d23, g2);
	
	and(d3, c0, p0, p1, p2, p3);
	and(d32, g0, p1, p2, p3);
	and(d33, g1, p2, p3);
	and(d34, p3, g2);
	or(c4, d3, d32, d33, d34, g3);
	
	xor(s0, c0, p0);
	xor(s1, c1, p1);
	xor(s2, c2, p2);
	xor(s3, c3, p3);

endmodule

module two_carry_lookahead_adder(a0, b0, a1, b1, c0, s0, s1, c2);
	input a0, b0, a1, b1, c0;
	wire c1, g0, g1, p0, p1, d0, d1, d12;
	output s0, s1, c2;
	
	xor(p0, a0, b0);
	and(g0, a0, b0);
	xor(p1, a1, b1);
	and(g1, a1, b1);
	
	and(d0, c0, p0);
	or(c1, d0, g0);
	
	and(d1, c0, p0, p1);
	and(d12, p1, g0);
	or(c2, d1, d12, g1);
	
	xor(s0, c0, p0);
	xor(s1, c1, p1);
	
endmodule

module hybrid_adder(a, b, c0, s, c);
	input [17:0] a, b;
	output [17:0] s;
	output [4:0] c;
	input c0;
	four_carry_lookahead_adder f1(a[0], b[0], a[1], b[1], a[2], b[2], a[3], b[3], c0, s[0], s[1], s[2], s[3], c[0]);
	four_carry_lookahead_adder f2(a[4], b[4], a[5], b[5], a[6], b[6], a[7], b[7], c[0], s[4], s[5], s[6], s[7], c[1]);
	four_carry_lookahead_adder f3(a[8], b[8], a[9], b[9], a[10], b[10], a[11], b[11], c[1], s[8], s[9], s[10], s[11], c[2]);
	four_carry_lookahead_adder f4(a[12], b[12], a[13], b[13], a[14], b[14], a[15], b[15], c[2], s[12], s[13], s[14], s[15], c[3]);
	two_carry_lookahead_adder f5(a[16], b[16], a[17], b[17], c[3], s[16], s[17], c[4]);
	
endmodule

