module xorgate(a,b,y);
input a,b;
output y;
assign y = (a&!b)|(!a&b);
endmodule
