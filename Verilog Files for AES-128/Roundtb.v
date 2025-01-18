
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
`timescale 1ns/100ps

module roundtb;

reg [127:0] data_in;
reg CLK;
reg [127:0] key_in;

wire [127:0] data_out;

reg_round r1(.key_in(key_in),.data_in(data_in),.CLK(CLK),.data_out(data_out));


initial begin
data_in = 128'h0;
key_in = 128'h0;
CLK = 0;

end

always #5 CLK = ~CLK;

initial begin 

#2 data_in = 128'hA;
key_in = 128'h63636362636363626363636263636362;
#6 $display(" R1 data: %h \n", data_out);

end

endmodule
