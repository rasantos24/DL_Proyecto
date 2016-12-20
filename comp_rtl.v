`timescale 1ns / 1ps
module comp_rtl(
		input wire comp_en,
		input wire [3:0] expected,
		input wire [3:0] alu_out,
		input wire clk,
		output reg result
    );
	 
	always@(posedge clk)
		if(alu_out == expected)
			result = 1'b1;	
		else
			result = 1'b0;
	
endmodule
