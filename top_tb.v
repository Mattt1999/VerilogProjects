module top_tb;

reg [2:0]a, b, c, op;
wire [2:0]r;

top dut(

	.a(a),
	.b(b),
	.c(c),
	.op(op),
	.r(r)
);

initial begin

	a = 1;
	b = 0;
	c = 1;
	op = 5;
	#10 $stop();

end


endmodule 