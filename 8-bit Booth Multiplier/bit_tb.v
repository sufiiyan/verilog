module booth_tb;

reg clock,reset,start;
reg signed [7:0]X,Y;
wire signed [15:0]Z;
wire valid;

always #5 clock = ~clock;

Booth_Multiplier inst (clock,reset,start,X,Y,valid,Z);

initial
$monitor($time,"X=%d, Y=%d, valid=%d, Z=%d ",X,Y,valid,Z);

initial
begin

X=-56;Y=-70;clock=1'b1;reset=1'b0;start=1'b0;
#10 reset = 1'b1;
#10 start = 1'b1;
#10 start = 1'b0;
#110 reset = 1'b0;
#120 clock = 1'b0;

$finish;
end     

initial 
begin

$dumpfile("Booth_Multiplier.vcd");
  $dumpvars(0,booth_tb);

end

endmodule
