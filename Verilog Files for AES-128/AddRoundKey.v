/////////////////////////////////////////////////////////////////////////////
// Title: Add Round Key
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
// 
// Description:
//    This will take the 128 bit data input and XOR it with the key.
//   
////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps 

module addKey(input [127:0] data_in, key_in, input CLK, output reg [127:0] en_data);

always @ (posedge CLK) begin

en_data <= data_in ^ key_in;

end


endmodule
