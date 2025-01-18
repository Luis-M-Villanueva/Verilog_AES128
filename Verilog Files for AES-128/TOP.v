//////////////////////////////////////////////////////////////////////////////
// Title: AES Top Module
// 
//   By: Luis Villanueva
//     ECE176 Advanced Digital Logic
// 
// Description:
//   	 This will call the key creator and will call the 9 rounds and final round.
//  	 this will also give out the final key.  
//       
//    
//   
////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps 
module AES(input [127:0] key_in, data_in, input CLK, output reg [127:0] data_out);

wire [127:0] d_0,d_1,d_2,d_3,d_4,d_5,d_6,d_7,d_8,d_9,d_10;
wire [127:0] k_0,k_1,k_2,k_3,k_4,k_5,k_6,k_7,k_8,k_9,k_10;

Keys U1(.key_in(key_in),.CLK(CLK),.key_0(k_0),.key_1(k_1),.key_2(k_2),.key_3(k_3),.key_4(k_4),.key_5(k_5),.key_6(k_6),.key_7(k_7),.key_8(k_8),.key_9(k_9),.key_10(k_10));


addKey  t0(.data_in(data_in),.key_in(k_0),.CLK(CLK),.en_data(d_0));
reg_round r1(.key_in(k_1),.data_in(d_0),.CLK(CLK),.data_out(d_1));
reg_round r2(.key_in(k_2),.data_in(d_1),.CLK(CLK),.data_out(d_2));
reg_round r3(.key_in(k_3),.data_in(d_2),.CLK(CLK),.data_out(d_3));
reg_round r4(.key_in(k_4),.data_in(d_3),.CLK(CLK),.data_out(d_4));
reg_round r5(.key_in(k_5),.data_in(d_4),.CLK(CLK),.data_out(d_5));
reg_round r6(.key_in(k_6),.data_in(d_5),.CLK(CLK),.data_out(d_6));
reg_round r7(.key_in(k_7),.data_in(d_6),.CLK(CLK),.data_out(d_7));
reg_round r8(.key_in(k_8),.data_in(d_7),.CLK(CLK),.data_out(d_8));
reg_round r9(.key_in(k_9),.data_in(d_8),.CLK(CLK),.data_out(d_9));
f_round r10(.key_in(k_10),.data_in(d_9),.CLK(CLK),.data_out(d_10));

always @ (posedge CLK) begin

data_out <= d_10;

end
endmodule 
