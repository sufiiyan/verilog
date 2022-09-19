module full_adder(a,b,c,y,x);
input a,b,c;
output y,x;
assign y = ((!a&!b&c)|(!a&b&c)|(a&!b&!c)|(a&b&c));
assign x = ((a&b)|(a&c)|(b&c));
endmodule 
