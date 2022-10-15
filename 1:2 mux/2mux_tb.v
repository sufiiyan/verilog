module mux_tb;
reg t_a,t_b,t_s;
wire t_o;

mux2 mux(.i0(t_a),.i1(t_b),.j(t_s),.o(t_o));

initial begin $dumpfile("2mux.vcd");
$dumpvars(0,mux_tb);
end

initial begin $monitor(t_a,t_b,t_s,t_o);

t_a=1'b1;
t_b=1'b0;
t_s=1'b0;
#10
t_a=1'b0;
t_b=1'b1;
t_s=1'b0;
#10
t_a=1'b1;
t_b=1'b0;
t_s=1'b1;
#10
t_a=1'b1;
t_b=1'b1;
t_s=1'b0;
#10
t_a=1'b0;
t_b=1'b0;
t_s=1'b1;
#10
t_a=1'b0;
t_b=1'b1;
t_s=1'b1;
#10
t_a=1'b1;
t_b=1'b0;
t_s=1'b1;
#10
t_a=1'b1;
t_b=1'b1;
t_s=1'b1;

end
endmodule
