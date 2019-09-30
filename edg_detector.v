/*
module fsm(
	input clk,
	input level,
	input rst,
	output reg tick
);


//Moore implementation of the machine 
localparam STATE_ZERO = 3'd0;
localparam STATE_ONE = 3'd1;
localparam STATE_TWO = 3'd2;

reg [1:0] state;// avem 3 stari, deci ne ajung 4 biti


always @(posedge clk) begin//logica pentru reset si starea urmatoare
	if(~rst) begin//daca a fost apasat butonul de reset
		state <= STATE_ZERO;
	end
	else begin
		case(state)
			STATE_ZERO:
				if(level)
					state <= STATE_ONE;
				else
					state <= state;
			STATE_ONE:
				if(~level)
					state <= STATE_TWO;
				else
					state <= state;
			STATE_TWO:
				if(~level)
					state <= STATE_ZERO;
				else
					state <= state;
			default:
				state <= STATE_ZERO;
				endcase
end
end

always @(*)begin//logica pt output-ul fiecarei stari
	case(state)
		STATE_ZERO: tick <= 0;
		STATE_ONE: tick <= 1;
		STATE_TWO: tick <= 1;
	default:
		tick <=0;
	endcase
end

endmodule*/

