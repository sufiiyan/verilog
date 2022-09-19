module half_adder(a,b,y,x);
input a,b;
output y,x;
assign y = (a&!b)|(!a&b);
assign x = a&b;
endmodule 
