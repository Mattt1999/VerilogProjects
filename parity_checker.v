module parity_checker(
	input [2:0]in,
	output out
);

assign out = in[0]?1'b0:1'b1;

endmodule 