`timescale 1ns / 1ps
module Calculator_TB;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [7:0]result;

	// Instantiate the Unit Under Test (UUT)
	Calculator uut (
		.clk(clk), 
		.reset(reset),
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		
		#1 reset = 1;
		#1 reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
	end
	
	always
		#50 clk = ~clk;
      
endmodule

