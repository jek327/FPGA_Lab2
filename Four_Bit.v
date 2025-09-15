`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:05:05 PM
// Design Name: 
// Module Name: Four_Bit
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


module Four_Bit(a,b,cin,s,cout);

// ripple
input[3:0]a,b;
input cin;
output[3:0]s;
output cout;

wire cout0,cout1,cout2;

//port mapping
One_Bit fa0(.a(a[0]), .b(b[0]), .c_in(cin), .c_out(cout0), .s(s[0]));
One_Bit fa1(.a(a[1]), .b(b[1]), .c_in(cout0), .c_out(cout1), .s(s[1]));
One_Bit fa2(.a(a[2]), .b(b[2]), .c_in(cout1), .c_out(cout2), .s(s[2]));
One_Bit fa3(.a(a[3]), .b(b[3]), .c_in(cout2), .c_out(cout), .s(s[3]));


endmodule
