module alu(
	input wire [7:0] op_a,  // Operand A
	input wire [7:0] op_b,  // Operand B
	input wire alu_op,      // ALU Operation: 0=ADD, 1=SUB
	output reg [7:0] result  // Operation result
);

// ALU運算邏輯
always @(*) begin
	 case (alu_op)
		1'b0: result = op_a + op_b;  //加法
		1'b1: result = op_a - op_b;  //減法
		default: result = 8'd0;      //預設(安全設計)
	 endcase
end
endmodule