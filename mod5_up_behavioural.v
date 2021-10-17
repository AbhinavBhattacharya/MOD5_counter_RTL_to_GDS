`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:06 10/09/2021 
// Design Name: 
// Module Name:    mod5_up 
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
module mod5_up(out, clk, reset
    );
output [2:0] out;
input clk, reset;

reg [2:0] out;

always @(posedge clk)
if(reset)
begin 
 out<= 2'b0;
end

else if(out<4)
 begin 
 out<= out+1;
 end
 
else
 begin
 out<=2'b0;
 end

endmodule