`timescale 1ns / 1ps
///////////////////////////////////////////            8 BIT RING COUNTER          /////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    ringcounter 
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
module ringcounter(clock, init, out
    );
input clock, init;  //init is the initialization input for initializing the counter.
output reg [0:7] out;
always @ (posedge clock)
begin
if(init)
out=8'b10000000;
else
begin
out={out[7],out[0:6]};
end
end
endmodule

// Principle of operation for this 8 bit Ring Counter is that we are just moving the LSB of 8 bit counter outputer to 
// next clock pulse
// when the counter is initialized the counter output will be 10000000 and then it will move to 01000000 and start moving the MSB 1 to LSB 1.
