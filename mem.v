`timescale 1ns / 1ps
`include "my_header.txt"

module mem(
		addr,
		data_frame,
		clk,
		en
    );
	 
	input clk, en;
	input [`addr-1:0] addr;
	
	output reg [`width-1:0] data_frame;
	
	always@(posedge clk)
	if(en)
		case(addr)
			3'b000: data_frame = 17'b0010_0100_0_0000_0010;
			3'b001: data_frame = 17'b0010_0100_1_0000_0011;
			3'b010: data_frame = 17'b0010_0100_0_0001_0110;
			3'b011: data_frame = 17'b0010_0100_1_0010_1110;
			3'b100: data_frame = 17'b0011_0101_0_0111_1100;
			3'b101: data_frame = 17'b0010_0101_0_0101_0111;
			3'b110: data_frame = 17'b0000_0000_0_0000_0000;
			3'b111: data_frame = 17'b0000_0000_0_0000_0000;
			default: data_frame = 17'bx;
		endcase
		
endmodule
