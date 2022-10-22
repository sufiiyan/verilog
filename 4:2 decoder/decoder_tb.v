module decoder_tb;
reg t_a, t_b, t_c; 
wire t_p, t_q, t_r, t_s;

and2 a2(.a(t_a), .b(t_b), .c(t_c), .p(t_p), .q(t_q), .r(t_r), .s(t_s));
initial begin $dumpfile("decoder.vcd");
$dumpvars(0, decoder_tb);
end 
initial begin $monitor(t_a,t_b, t_c,t_p, t_q, t_r, t_s);
t_a = 1'b0;
t_b = 1'b0;
t_c = 1'b1;
#10
t_a = 1'b0;
t_b = 1'b1;
t_c = 1'b1;
#10
t_a = 1'b1;
t_b = 1'b0;
t_c = 1'b1;
#10
t_a = 1'b1;
t_b = 1'b1;
t_c = 1'b1;
#10
t_a = 1'b1;
t_b = 1'b1;
t_c = 1'b1;
#10
t_a = 1'b1;
t_b = 1'b1;
t_c = 1'b0;

end 
endmodule
