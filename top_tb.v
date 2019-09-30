module top_tb;

reg [2:0]A, B, C, OP;
wire [2:0] R;

top dut(
	.a(A),
	.b(B),
	.c(C),
	.op(OP),
	.r(R)
);

initial begin

	A = 1;
	B = 0;
	C = 1;
	OP = 5;
	
	#10 $stop();

end

endmodule 