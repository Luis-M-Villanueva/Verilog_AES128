// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
`timescale 1ns/100ps

module keyexptb;

reg [127:0] key_in;
reg CLK;
reg [7:0] r_i;
wire [127:0] key_out;
reg reset;

key_expansion u1(.key_in(key_in),.CLK(CLK),.r_i(r_i),.key_out(key_out));


initial begin
key_in= 128'h0;
CLK = 0;
r_i = 8'h1;

end

always #5 CLK = ~CLK;

initial begin
#1
#2 key_in = 128'h000102030405060708090A0B0C0D0E0F;
#3 r_i = 8'h1;  
#4 $display("\n \t +___ KEY ___+ \t \n  \t Key: %h \t    \n keyout %h \n  +---------------------+", key_in ,key_out);
#2 key_in = key_out;
#3 r_i = 8'h2;  
#4 $display("\n \t +___ KEY ___+ \t \n  \t Key: %h \t    \n keyout %h \n +---------------------+", key_in ,key_out);
end

endmodule
