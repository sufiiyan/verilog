module half_adder_tb; 
wire t_y, t_x;
reg t_a, t_b;
half_adder my_gate( .a(t_a), .b(t_b), .y(t_y), .x(t_x));
initial 
begin 
	$dumpfile("half_adder_tb.vcd");
	$dumpvars(0, half_adder_tb);
	$monitor(t_a, t_b, t_y);
	$display("Sum Output");
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
	
	$monitor(t_a, t_b, t_x);
	
	#5
	t_a = 1'b0;
	t_b = 1'b0;
	$display("Carry Output");
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
