module fsm_tb;

reg clk;
reg level;
reg rst;
wire tick;

initial begin
	clk = 1;
	forever #5 clk = ~clk;//perioada clock-ului este de 10
end

fsm dut(
	.clk(clk),
	.level(level),
	.rst(rst),
	.tick(tick)
);

initial begin

	rst = 1;
	#10
	rst = 0;
	#10
	rst = 1;

end

initial begin

	level = 1;
	#10
	level = 1;
	#10
	level = 0;
	#10
	level = 1;
end

initial begin
	#100 $stop(); 
end

endmodule 