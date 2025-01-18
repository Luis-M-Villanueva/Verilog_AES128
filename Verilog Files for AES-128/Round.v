

//////////////////////////////////////////////////////////////////////////////
// Title: Regular Round 
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
// 
// Description:
//   	This module will be instantiated for the first rounds. They will all be 
//  	XORd with Key, Subsituted, Shifted, MixCol. THe first rounds are 0-9. Then   
//      the 10th Round is seperate.  
//    
//
////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps 
module reg_round(input [127:0] key_in, data_in, input CLK, output [127:0] data_out);

wire [127:0] sub_data,shift_data,mix_data,f_data;

Substitution S1(.Data_in(data_in),.CLK(CLK),.Data_out(sub_data));
shiftrow Sh1(.Data_in(sub_data),.CLK(CLK),.Data_out(shift_data));
MixCol M1(.Data_in(shift_data),.CLK(CLK),.Data_out(mix_data));
addKey A1(.data_in(mix_data),.key_in(key_in),.CLK(CLK),.en_data(f_data));

assign data_out = f_data;
endmodule 