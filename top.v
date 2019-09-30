module top
(

	input [2:0]op, a, b, c,
	output [2:0]r
);

wire w1;
wire [2:0]w2, w3, w4, w5;

comparator comparator(
	.a(a),
	.b(b),
	.out(w1)
);

sumator sumator(
	.b(b),
	.c(c),
	.out(w2)
);

bitwise_or bitwise_or(
	.b(b),
	.c(c),
	.out(w3)
);

bitwise_not bitwise_not(
	.c(c),
	.out(w4)
);

muxx muxx(

	.in1(w2),
	.in0(w3),
	.sel(w1),
	.out(w5)
);

muxx muxx1(

	.in1(w5),
	.in0(w4),
	.sel(op[2]),
	.out(r)
);

endmodule 