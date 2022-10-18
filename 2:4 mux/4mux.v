module mux2 (input wire a,b,  input wire j, output wire o);
assign o = (j == 0)? a : b;
endmodule
module mux4( input wire a, b , c , d , input wire j, k, output o);
	wire p, q;
	mux2 i0(a, b, j, p);
	mux2 i1(b, c, j, q);
	mux2 i2(p, q, k, o); 
endmodule
