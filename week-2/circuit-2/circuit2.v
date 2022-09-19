module simple_circuit(A2,B2,C2,Y);	
output Y;
input A2,B2,C2;
wire w1,w2,w3;
assign w1= C2&B2;
assign w2= A2|w1;
assign w3= B2&A2; 
assign Y=  w2|w3;
endmodule

