`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 02:05:14 PM
// Design Name: 
// Module Name: One_Bit_tb
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


module One_Bit_tb;
reg a,b,c_in;
wire c_out,s;

One_Bit uut(a,b,c_in,c_out,s);

initial begin
    a=1'b0; b=1'b0; c_in=1'b0;
    #10;
    a=1'b0; b=1'b0; c_in=1'b1;
    #10;
    a=1'b0; b=1'b1; c_in=1'b0;
    #10;
    a=1'b0; b=1'b1; c_in=1'b1;
    #10;
    a=1'b1; b=1'b0; c_in=1'b0;
    #10;
    a=1'b1; b=1'b0; c_in=1'b1;
    #10;
    a=1'b1; b=1'b1; c_in=1'b0;
    #10;
    a=1'b1; b=1'b1; c_in=1'b1;
  
    #10 $stop;
end
    
endmodule

