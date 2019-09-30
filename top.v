module top(
	input [2:0]a, b, c, op,
	output [2:0]r
);

wire [2:0]w1, w2, w3, w4, w5, w6;

diff diff(
	.a(a),
	.b(b),
	.out(w1)
);

sum sum(
	.b(b),
	.c(c),
	.out(w2)
);

bitwise_or bitwise_or(
	.b(b),
	.c(c),
	.out(w3)
);

bitwise_xor bitwise_xor(
	.a(a),
	.c(c),
	.out(w4)
);

muxxx muxxx1(
	.in1(w1),
	.in2(w2),
	.sel(op[0]),
	.out(w5)
);

muxxx muxxx2(
	.in1(w3),
	.in2(w4),
	.sel(op[1]),
	.out(w6)
);

muxxx muxxx3(
	.in1(w5),
	.in2(w6),
	.sel(op[2]),
	.out(r)
);

endmodule 