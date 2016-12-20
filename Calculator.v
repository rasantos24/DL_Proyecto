`timescale 1ns / 1ps
`define synth 1

module Calculator(
		input clk,
		input reset,
		input [3:0]a,
		input [3:0]b,
		output [15:0]result
	);
	
	wire [3:0] a_in , b_in , op_code, exp_out, alu_out;
	wire c_in, mem_en, comp_en, alu_en;
	wire [2:0] addr;
	wire [16:0] data_frame;

	alu uo(.a(a_in), .b(b_in), .c_in(c_in), .op_code(op_code), .clk(clk), .en(alu_en), .y(alu_out));
	
	cntrl_fsm u2 (.reset(reset), .clk(clk), .data_frame(data_frame), .a_in(a_in), .b_in(b_in), .c_in(c_in), 
						.op_code(op_code), .exp(exp_out), .alu_en(alu_en), .mem_en(mem_en), .comp_en(comp_en), .addr(addr));

	mem u3 (.addr(addr), .data_frame(data_frame), .clk(clk), .en(mem_en));

	generate
		if(`synth)
			comp_rtl u4(.comp_en(comp_en), .expected(exp_out), .alu_out(alu_out), .clk(clk), .result(result));
		else
			comp_beh u5(.comp_en(comp_en), .expected(exp_out), .alu_out(alu_out), .clk(clk), .result(result));
	endgenerate

endmodule
