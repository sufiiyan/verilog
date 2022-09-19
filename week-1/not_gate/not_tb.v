module notgate_tb;
wire t_y;
reg t_a;

notgate my_gate( .a(t_a), .y(t_y));

initial 
begin 
	$dumpfile("not_tb.vcd");
	$dumpvars(0, notgate_tb);

	$monitor(t_a, t_y);
	
	t_a = 1'b0;
	
	#10 
	t_a = 1'b1;
	
end 
endmodule 
