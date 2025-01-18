// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
`timescale 1ns/100ps

module SubLUTtb();

reg [7:0] B_in;

wire [7:0] B_out;

SubLUT U0(.B_in(B_in),.B_out(B_out));

initial begin
B_in = 8'h00;
end

initial begin
#5 B_in = 8'hFF;
#10 B_in = 8'h01;
#15 B_in = 8'h10;
#15 B_in = 16'hFF00;
end

always @ (*) begin
$monitor("\h",B_out);
end

endmodule

