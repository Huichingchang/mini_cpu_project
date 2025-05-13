module instr_mem (
	input wire [3:0] addr,  //指令位址
	output reg [7:0] instr  //指令資料
);

// ROM內容宣告
always @ (*) begin
	case (addr)
		4'd0: instr = 8'b00010001;  //示例: LOAD 17
		4'd1: instr = 8'b00100010;  //示例: LOAD 34
		4'd2: instr = 8'b01000000;  //示例: ADD
		4'd3: instr = 8'b01100000;  //示例: STORE
		default: instr = 8'b00000000;  //預設Nop
	endcase
end
endmodule