// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
`timescale 1ns/100ps

module AEStb;

reg [127:0] data_in;
reg CLK;
reg [127:0] key_in;

wire [127:0] en_data;


AES A1(.key_in(key_in), .data_in(data_in),.CLK(CLK),.data_out(en_data));

initial begin

key_in = 128'h0;
data_in = 128'h0;
CLK= 0;

end 

always #5 CLK = ~CLK;

initial begin
#2 key_in = 128'h00102030405060708090A0B0C0D0E0F0;
data_in = 128'h0000000000000000000000000000000A;
end

always @ (en_data) begin
$display(" \t +_ Key in_+ \t \n \t %h \t \n \t +_Data in_+ \t \n \t %h \t \n \t +_ En Data_+ \t \n \t %h \t \n ", key_in, data_in,en_data);
end

endmodule