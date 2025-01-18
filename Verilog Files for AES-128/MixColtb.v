// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
`timescale 1ns/100ps

module MixColtb();

reg [127:0] Data_in;
reg [127:0] Data_in1;
reg CLK;

wire [127:0] Data_out;
wire [127:0] Data_out2;

MixCol U1(.Data_in(Data_in),.CLK(CLK),.Data_out(Data_out));
mix_columns u2(.clk(CLK),.state_mc_in(Data_in1),.state_mc_out(Data_out2));

initial begin
Data_in = 128'h0;
Data_in1 = 128'h0;
CLK = 0;
end

always #5 CLK = ~CLK;

initial begin

#2 Data_in = 128'h01010101010101010101010101010101;
Data_in1 = 128'h01010101010101010101010101010101;
#8 Data_in = 128'h2e8a8d1989212a21fcd1e5dabe1452be;
Data_in1 = 128'h2e8a8d1989212a21fcd1e5dabe1452be;

#12 Data_in = 128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
#12 Data_in1 = 128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
$monitor("%h \n %h ",Data_out,Data_out2);
end

endmodule
