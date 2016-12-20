`timescale 1ns / 1ps
module comp_beh(
		input wire comp_en,
		input wire [3:0] expected,
		input wire [3:0] alu_out,
		input wire clk,
		output reg result
    );

	always@(posedge clk)
	begin
		assign result = expected == alu_out;
		
		if(!result)
			$display("At_time_%t, _exp_=_%b, _act_=_%b, _result_=_%b", $time, expected, alu_out, result);
	end

endmodule
