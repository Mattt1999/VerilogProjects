module muxxx(
	input in0,
	input [2:0]in1, 
	input sel,
	output [2:0]out
);


assign out = sel?in1:in0;

endmodule 