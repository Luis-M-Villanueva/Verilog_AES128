/////////////////////////////////////////////////////////////////////////////
// Title: Final Round 
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
// 
// Description:
//   	This module will be instantiated for the last round the 10th round. This
//      will no have a MixCol function.   
//
////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps 
module f_round(input [127:0] key_in, data_in, input CLK, output [127:0] data_out);

wire [127:0] sub_data,shift_data,f_data;

Substitution S1(.Data_in(data_in),.CLK(CLK),.Data_out(sub_data));
shiftrow Sh1(.Data_in(sub_data),.CLK(CLK),.Data_out(shift_data));
addKey A1(.data_in(shift_data),.key_in(key_in),.CLK(CLK),.en_data(f_data));

assign data_out = f_data;

endmodule 