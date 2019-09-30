
//The implementation of the first Task from the first FSM laboratory. 

module fsm(
	input rst,
	input clk,
	input a, 
	input b,
	output reg y1,
	output reg y2
);

reg [2:0]state;//Avem nevoie de 5 stari, deci va trebui un nr de pe 3 biti

localparam STATE_S = 3'd0;
localparam STATE_P = 3'd1;
localparam STATE_T = 3'd2;
localparam STATE_R = 3'd3;
localparam STATE_V = 3'd4;

always @(posedge clk) begin//logica pentru urmatoarea stare.

	if(~rst)//daca butonul de reset este apasat, revenim la starea initiala
		state <= STATE_S;
	else
		case(state)
			STATE_S:
				if(a)	
					state <= STATE_P;
				else
					state <= STATE_R;
			STATE_P:
				if(b)
					state <= STATE_T;
				else
					state <= state;
			STATE_R:
				if(a)
					state <= STATE_V;
				else
					state <= state;
			STATE_T:
					state <= state;
			STATE_V:
					state <= state;
			default:
				state <= STATE_S;
			endcase

end

always @(*) begin//logica pt valorile lui y1 si y2 corespunzatoare fiecarei stari

	case(state)
		STATE_S,
		STATE_P,
		STATE_T: begin
			y1<=1; 
			y2<=0;
			end
	endcase
end


endmodule 