module mux4_tb;

reg t_a,t_b, t_c, t_d, t_p, t_q;
wire t_o;

mux4 mux(.a(t_a),.b(t_b),.c(t_c),.d(t_d), .j(t_p), .k(t_q), .o(t_o));

initial begin $dumpfile("4mux.vcd");
$dumpvars(0,mux4_tb);
end

initial begin $monitor(t_a,t_b,t_c,t_d,t_p,t_q,t_o);

t_a=1'b1;
t_b=1'b0;
t_c=1'b0;
t_d=1'b0;
t_p=1'b0;
t_q=1'b0;
#10
t_a=1'b0;
t_b=1'b0;
t_c=1'b1;
t_d=1'b1;
t_p=1'b0;
t_q=1'b0;

#10
t_a=1'b1;
t_b=1'b0;
t_c=1'b1;
t_d=1'b0;
t_p=1'b1;
t_q=1'b0;

#10
t_a=1'b1;
t_b=1'b0;
t_c=1'b0;
t_d=1'b1;
t_p=1'b1;
t_q=1'b1;

#10
t_a=1'b1;
t_b=1'b1;
t_c=1'b1;
t_d=1'b1;
t_p=1'b1;
t_q=1'b1;


end
endmodule
