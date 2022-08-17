`timescale 1ns / 1ps

//////////////////////////////             test bench          ////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   ringcounter
// Module Name:   
// Project Name:  ringcounter_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ringcounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ringcounter_test;

	// Inputs
	reg clock;
	reg init;

	// Outputs
	wire [0:7]out;

	// Instantiate the Unit Under Test (UUT)
	ringcounter uut (
		.clock(clock), 
		.init(init), 
		.out(out)
	);
initial
begin
clock=1'b0;
repeat(20)
begin
#50 clock=~clock;
end
end

initial
begin
init=0;  //initially the time 0ns the counter is not initialized.
#50 init =1;// at 50ns, the counter is initilized by putting the init pin to 1. It will start ring counter operation.
#10 init =0; // It will stop the reinitialization of counter at next clock pulse but smooth functioning of the counter.
end  
endmodule

