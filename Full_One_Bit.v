`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 01:43:21 PM
// Design Name: 
// Module Name: One_Bit
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


module One_Bit(input a,b,c_in, output c_out,s);
   // combinational
   assign s = a^b^c_in;
   assign c_out = b&c_in | a&c_in | a&b;

endmodule
