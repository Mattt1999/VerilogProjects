module muxxx(

	input [2:0] in1, in2,
	input sel,
	output [2:0]out
);

assign out = sel?in1:in2;

endmodule