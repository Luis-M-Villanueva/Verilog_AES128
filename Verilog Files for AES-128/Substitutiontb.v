// By: Luis Villanueva
//     ECE176 Advanced Digital Logic

`timescale 1ns/100ps

module Substitutiontb();

reg [127:0] Data_in;
reg CLK;

wire [127:0] Data_out;

Substitution U1(.Data_in(Data_in),.CLK(CLK),.Data_out(Data_out));

initial begin
CLK = 0;
Data_in = 128'h0;
end

always #5 CLK = ~CLK;

initial begin 

#1 Data_in = 128'h11111111111111111111111111111111;
#6 Data_in = 128'h22222222222222222222222222222222;
end

always @ (Data_out) begin
$display("%h",Data_out);
end



endmodule
