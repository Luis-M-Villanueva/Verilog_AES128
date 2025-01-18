
//////////////////////////////////////////////////////////////////////////////
// Title: Key Creation
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
// 
// Description:
//     
//    This will create the ten keys required
//    
//   
////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps



module Keys(input [127:0] key_in, input CLK, output reg [127:0] key_0,key_1,key_2,key_3,key_4,key_5,key_6,key_7,key_8,key_9,key_10);

wire [127:0] k_0,k_1,k_2,k_3,k_4,k_5,k_6,k_7,k_8,k_9,k_10;

assign k_0 = key_in;
key_expansion k1(.key_in(key_in),.CLK(CLK),.r_i(1),.key_out(k_1));
key_expansion k2(.key_in(k_1),.CLK(CLK),.r_i(2),.key_out(k_2));
key_expansion k3(.key_in(k_2),.CLK(CLK),.r_i(3),.key_out(k_3));
key_expansion k4(.key_in(k_3),.CLK(CLK),.r_i(4),.key_out(k_4));
key_expansion k5(.key_in(k_4),.CLK(CLK),.r_i(5),.key_out(k_5));
key_expansion k6(.key_in(k_5),.CLK(CLK),.r_i(6),.key_out(k_6));
key_expansion k7(.key_in(k_6),.CLK(CLK),.r_i(7),.key_out(k_7));
key_expansion k8(.key_in(k_7),.CLK(CLK),.r_i(8),.key_out(k_8));
key_expansion k9(.key_in(k_8),.CLK(CLK),.r_i(9),.key_out(k_9));
key_expansion k10(.key_in(k_9),.CLK(CLK),.r_i(10),.key_out(k_10));

always @ (posedge CLK) begin

key_0 <= k_0;
key_1 <= k_1;
key_2 <= k_2;
key_3 <= k_3;
key_4 <= k_4;
key_5 <= k_5;
key_6 <= k_6;
key_7 <= k_7;
key_8 <= k_8;
key_9 <= k_9;
key_10 <= k_10;

end
endmodule