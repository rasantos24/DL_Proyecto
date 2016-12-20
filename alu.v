`timescale 1ns / 1ps
module alu(
		input [3:0] a,
		input [3:0] b,
		input c_in,
		input [3:0] op_code,
		input clk,
		input en,
		output reg [3:0] y
    );
	 
	always@(posedge clk)

		if(en)
		begin
			case(op_code)
				4'b0000:
					y = a + c_in;
				4'b0001:
					y = a + b + c_in;
				4'b0010:
					y = a + (~b) + c_in;
				4'b0011:
					y = a - 1 + c_in;
				4'b0100:
					y = a & b;
				4'b0101:
					y = a | b;
				4'b0110:
					y = a ^ b;
				4'b0111:
					y = ~a;
				4'b1000:
					y = 0;
				default:
					y = 0;
			endcase
		end

endmodule
