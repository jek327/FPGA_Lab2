`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:46:46 PM
// Design Name: 
// Module Name: Four_Bit_tb
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


module Four_Bit_tb;


integer i,j;
reg [3:0]a,b;
reg cin;

wire[3:0]s;
wire cout;

Four_Bit uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

initial begin 
    for(i=0;i<16;i=i+1) begin
        for(j=0;j<16;j=j+1) begin
            a=i;b=j;cin=1'b0;
            #10;
        end 
    end
    $stop;
end

endmodule

