module norgate_tb;
wire t_y;
reg t_a, t_b;

norgate my_gate( .a(t_a), .b(t_b), .y(t_y));

initial 
begin 

	$dumpfile("nor_tb.vcd");
	$dumpvars(0, norgate_tb);

	$monitor(t_a, t_b, t_y);
	
	t_a = 1'b0;
	t_b = 1'b0;
	
	#5 
	t_a = 1'b0;
	t_b = 1'b1;
	
	#5 
	t_a = 1'b1;
	t_b = 1'b0;
	
	#5 
	t_a = 1'b1;
	t_b = 1'b1;
	
end 
endmodule 

