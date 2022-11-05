module Booth_Multiplier(clock,reset,start,X,Y,valid,Z);

input clock;
input reset;
input start;

input signed [7:0]X,Y;
output signed [15:0]Z;
output valid;

reg signed [15:0] Z,next_Z,Z_temp;
reg next_state, present_state;
reg [2:0] temp,next_temp;
reg [2:0] count,next_count;
reg valid, next_valid;

parameter IDLE = 1'b0;
parameter START = 1'b1;

always @ (posedge clock or negedge reset)
begin
if(!reset)
   begin
   Z          <= 16'd0;
   valid      <= 1'b0;
   present_state <= 1'b0;
   temp       <= 2'd0;
   count      <= 2'd0;
   end

else
   begin
   Z          <= next_Z;
   valid      <= next_valid;
   present_state <= next_state;
   temp       <= next_temp;
   count      <= next_count;
   end
end

always @ (*)
begin 
case(present_state)

IDLE:
begin
next_count = 2'b0;
next_valid = 1'b0;
if(start)
   begin
      next_state = START;
      next_temp  = {X[0],1'b0};
      next_Z     = {8'd0,X};
   end
else
   begin
      next_state = present_state;
      next_temp  = 4'd0;
      next_Z     = 16'd0;
   end
end

START:
begin
    case(temp)
    4'b10:   Z_temp = {Z[15:8]-Y,Z[7:0]};
    4'b01:   Z_temp = {Z[15:8]+Y,Z[7:0]};
    default: Z_temp = {Z[15:8],Z[7:0]};
    endcase
next_temp  = {X[count+1],X[count]};
next_count = count + 1'b1;
next_Z     = Z_temp >>> 1;
next_valid = (&count) ? 1'b1 : 1'b0; 
next_state = (&count) ? IDLE : present_state;	
end
endcase
end
endmodule
