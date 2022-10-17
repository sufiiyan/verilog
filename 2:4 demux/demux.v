module Demultiplexer_1_to_4_case (output reg [3:0] Y, input [1:0] A, input din);
always @(Y, A) begin
    case (A)
        2'b00 : begin Y[0] = din; Y[3:1] = 0; end
        2'b01 : begin Y[1] = din; Y[0] = 0;   end
        2'b10 : begin Y[2] = din; Y[1:0] = 0; end
        2'b11 : begin Y[3] = din; Y[2:0] = 0; end
    endcase   
end
endmodule
