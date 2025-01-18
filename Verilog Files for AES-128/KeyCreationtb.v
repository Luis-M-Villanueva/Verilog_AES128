// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
`timescale 1ns/100ps

module Keystb;

reg [127:0] key_in;
reg CLK;

wire [127:0] k_0,k_1,k_2,k_3,k_4,k_5,k_6,k_7,k_8,k_9,k_10;

Keys U1(.key_in(key_in),.CLK(CLK),.key_0(k_0),.key_1(k_1),.key_2(k_2),.key_3(k_3),.key_4(k_4),.key_5(k_5),.key_6(k_6),.key_7(k_7),.key_8(k_8),.key_9(k_9),.key_10(k_10));

initial begin
key_in = 0;
CLK = 0;
end

always #5 CLK = ~CLK;

initial begin

#2 key_in = 128'h000102030405060708090A0B0C0D0E0F;
#6 $display(" \t +______ KEYS _______+ \t \n");
$display(" \t K0: %h \n", k_0);   
$display(" \t K1: %h \n", k_1);   
$display(" \t K2: %h \n", k_2);   
$display(" \t K3: %h \n", k_3);   
$display(" \t K4: %h \n", k_4);   
$display(" \t K5: %h \n", k_5);   
$display(" \t K6: %h \n", k_6);   
$display(" \t K7: %h \n", k_7);   
$display(" \t K8: %h \n", k_8);   
$display(" \t K9: %h \n", k_9);   
$display(" \t K10: %h \n", k_10); 
#2 key_in = 128'h00102030405060708090a0b0c0d0e0f0;
#6 $display(" \t +______ KEYS _______+ \t \n");
$display(" \t K0: %h \n", k_0);   
$display(" \t K1: %h \n", k_1);   
$display(" \t K2: %h \n", k_2);   
$display(" \t K3: %h \n", k_3);   
$display(" \t K4: %h \n", k_4);   
$display(" \t K5: %h \n", k_5);   
$display(" \t K6: %h \n", k_6);   
$display(" \t K7: %h \n", k_7);   
$display(" \t K8: %h \n", k_8);   
$display(" \t K9: %h \n", k_9);   
$display(" \t K10: %h \n", k_10);  


end

endmodule