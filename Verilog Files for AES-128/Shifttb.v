// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
`timescale 1ns/100ps

module Shifttb();

reg clk;
reg [127:0] Di;

wire [127:0] Do;

shiftrow U0(.CLK(clk),.Data_in(Di),.Data_out(Do));

initial begin
clk =0;
Di [127:0] = 127'b0; 
end

always #5 clk = !clk;

initial begin
#5 Di[127:0] = 128'h01;
$display("This will be a shift but because 01 is in the LSB it will stay the same",Do);
#10 Di[127:0] = 128'h11000000000000000000000000000000;
$display("This value should be a repeat of 0xB2 since 0x11 is its substitution ",Do);
end

endmodule