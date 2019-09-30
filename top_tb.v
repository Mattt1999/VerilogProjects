module top_tb;

reg [1:0]a, b;
wire [6:0]w;

//instantiem topul

top dut(

	.a(a),
	.b(b),
	.out(w)
);

initial begin

	a = 0;
	#20
	a = 1;
	#10
	a = 2;
	#10 
	a = 3;
	#10
	a = 2;
	#15
	a = 1;
	#10
	a = 0;

end

initial begin

	b = 0;
	#15
	b = 1;
	#10
	b = 0;
	#10
	b = 1;
	#10
	b = 0;
	#10
	b = 1;

end

initial begin
	
	#110//(22*5 nr max de intarzieri . de la a)
	$stop();
	
end

endmodule 