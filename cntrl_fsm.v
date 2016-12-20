`timescale 1ns / 1ps
module cntrl_fsm(
		input reset,
		input clk,
		input [16:0] data_frame,
		output reg [16:13] a_in,
		output reg [12:9] b_in,
		output reg c_in,
		output reg [7:4] op_code,
		output reg [3:0] exp,
		output reg alu_en,
		output reg mem_en,
		output reg comp_en,
		output reg [2:0] addr
    );
	 
	localparam[4:0]
	s0_init = 5'b00001,
	s1_fetch = 5'b00010,
	s2_alu = 5'b00100,
	s3_comp = 5'b01000,
	s4_done = 5'b10000;

	reg [4:0] curr_state;
	reg [4:0] next_state;
	reg [2:0] addr_i;
	 
	always@(posedge clk, posedge reset)
	begin
		if(reset == 1'b1)
			begin
				curr_state <= s0_init;
				addr <= 3'b000;
			end
		else
			begin
				curr_state <= next_state;
				addr <= addr_i;
			end
	end

	always@(curr_state)
	begin
		a_in = data_frame[16:13];
		b_in = data_frame[12:9];
		c_in = data_frame[8];
		op_code = data_frame[7:4];
		exp = data_frame[3:0];
		
		addr_i = addr;
		
		case(curr_state)
			s0_init:
				begin
					alu_en = 1'b0;
					mem_en = 1'b0;
					comp_en = 1'b0;
					
					next_state = s1_fetch;
				end
			s1_fetch:
				begin
					alu_en = 1'b0;
					mem_en = 1'b1;
					comp_en = 1'b0;
					
					next_state = s2_alu;
				end
			s2_alu:
				begin
					alu_en = 1'b1;
					mem_en = 1'b0;
					comp_en = 1'b0;
					
					next_state = s3_comp;
				end
			s3_comp:
				begin
					alu_en = 1'b0;
					mem_en = 1'b0;
					comp_en = 1'b1;
					
					next_state = s4_done;
				end
			s4_done:
				begin
					alu_en = 1'b0;
					mem_en = 1'b0;
					comp_en = 1'b0;
					
					if(addr_i >= 3'b101)
						begin
							next_state = s4_done;
						end
					else
						begin
							next_state = s1_fetch;
							addr_i = addr_i + 1;
						end
				end
			default:
				begin
					alu_en = 1'b0;
					mem_en = 1'b0;
					comp_en = 1'b0;
					
					next_state = s0_init;
				end
		endcase
	end

endmodule
