module top(
	input [1:0]a, b,
	output [6:0]out
);

wire [2:0]w1;
wire [2:0] w3;
wire w2; 

adunare adunare(
	.in0(a),
	.in1(b),
	.out(w1)
);

parity_checker parity_checker(

	.in(w1),
	.out(w2)
);

muxxx muxxx(

	.in0(1'b0),
	.in1(w1),
	.sel(w2),
	.out(w3)
);

transcoder_out transcoder_out(
	
	.in(w3),
	.out(out)
);

endmodule 