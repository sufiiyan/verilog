module Demultiplexer_1_to_4_case_tb;
wire [3:0] Y;
reg [1:0] A;
reg din;
Demultiplexer_1_to_4_case I0 (Y, A, din);
initial begin $dumpfile("demux.vcd");
$dumpvars(0, Demultiplexer_1_to_4_case_tb);
end
initial begin
    din = 1;
    A = 2'b00;
#1  A = 2'b01;
#1  A = 2'b10;
#1  A = 2'b11;
end
initial begin
    $monitor("%t| Din = %d| A[1] = %d| A[0] = %d| Y[0] = %d| Y[1] = %d| Y[2] = %d| Y[3] = %d",
              $time, din, A[1], A[0], Y[0], Y[1], Y[2], Y[3]);
end
endmodule
