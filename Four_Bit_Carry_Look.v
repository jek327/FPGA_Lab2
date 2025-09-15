`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:27:16 PM
// Design Name: 
// Module Name: Four_Bit_Carry_Look
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Four_Bit_Carry_Look(A,B,Cin,S,Cout);

input[3:0]A,B;
input Cin;
output[3:0]S;
output Cout;

//assign Cin = 1'b0;

wire p0 = A[0]^B[0];
wire p1 = A[1]^B[1];
wire p2 = A[2]^B[2];
wire p3 = A[3]^B[3];

wire g0 = A[0]&B[0];
wire g1 = A[1]&B[1];
wire g2 = A[2]&B[2];
wire g3 = A[3]&B[3];

wire c1 = g0 | (p0 & Cin);
wire c2 = g1 | (p1 & g0) | (p1 & p0 & Cin);
wire c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & Cin);
assign Cout = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & Cin);



//port mapping
One_Bit fa0(.a(A[0]), .b(B[0]), .c_in(Cin), .s(S[0]));
One_Bit fa1(.a(A[1]), .b(B[1]), .c_in(c1),.s(S[1]));
One_Bit fa2(.a(A[2]), .b(B[2]), .c_in(c2),.s(S[2]));
One_Bit fa3(.a(A[3]), .b(B[3]), .c_in(c3),.s(S[3]));







endmodule
