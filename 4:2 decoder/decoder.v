module and2(input wire a, b, c, output wire p, q, r, s);
assign p = (~a)&(~b)&(c);
assign q = (~a)&(b)&(c);
assign r = (a)&(~b)&(c);
assign s = (a)&(b)&(c);
endmodule
