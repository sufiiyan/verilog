module full_adder_tb; 
wire t_y, t_x;
reg t_a, t_b, t_c;
full_adder my_gate( .a(t_a), .b(t_b), .c(t_c), .y(t_y), .x(t_x));
initial 
begin 
	$dumpfile("full_adder_tb.vcd");
	$dumpvars(0, full_adder_tb);
	$monitor(t_a, t_b, t_c, t_y);
	$display("Sum Output");
	t_a = 1'b0;
	t_b = 1'b0;
	t_c = 1'b0;
	#5
	t_a = 1'b0;
	t_b = 1'b0;
	t_c = 1'b1;
	#5
	t_a = 1'b0;
	t_b = 1'b1;
	t_c = 1'b0;
	#5
	t_a = 1'b0;
	t_b = 1'b1;
	t_c = 1'b1;
	#5
	t_a = 1'b1;
	t_b = 1'b0;
	t_c = 1'b0;
	#5
	t_a = 1'b1;
	t_b = 1'b0;
	t_c = 1'b1;
	#5
	t_a = 1'b1;
	t_b = 1'b1;
	t_c = 1'b0;
	#5
	t_a = 1'b1;
	t_b = 1'b1;
	t_c = 1'b1;
	
	
	$monitor(t_a, t_b, t_c, t_x);
	
	#5
	t_a = 1'b0;
	t_b = 1'b0;
	t_c = 1'b0;
	$display("Carry Output");
	#5
	t_a = 1'b0;
	t_b = 1'b0;
	t_c = 1'b1;
	#5
	t_a = 1'b0;
	t_b = 1'b1;
	t_c = 1'b0;
	#5
	t_a = 1'b0;
	t_b = 1'b1;
	t_c = 1'b1;
	#5
	t_a = 1'b1;
	t_b = 1'b0;
	t_c = 1'b0;
	#5
	t_a = 1'b1;
	t_b = 1'b0;
	t_c = 1'b1;
	#5
	t_a = 1'b1;
	t_b = 1'b1;
	t_c = 1'b0;
	#5
	t_a = 1'b1;
	t_b = 1'b1;
	t_c = 1'b1;
end  
endmodule 
