`timescale 1ns/1ps
module cpu_core_tb;

//測試訊號
reg clk;
reg rst_n;

// Instantiate the DUT (Device Under Test)
cpu_core uut(
	.clk(clk),
	.rst_n(rst_n)
);

//產生時脈 (50MHz -> 20ns 一個週期)
always #10 clk = ~clk;

//測試流程
initial begin
	//初始化
	clk = 0;
	rst_n = 0;
	
	// Reset保持一段時間
	#100;
	rst_n = 1;
	
	//執行一段時間讓CPU找指令
	#2000;
	
	//結束模擬
	$stop;
end
endmodule