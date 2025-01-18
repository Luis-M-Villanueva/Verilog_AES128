//////////////////////////////////////////////////////////////////////////////
// Title: Subsitution 
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
// 
// Description:
//     This will be the substitution step for AES program. 
//     It will take the 16 byte matrix and input into the  
//     SubLUT which is a LUT module to determine what each byte will be 
//     There is 16 bytes so 16 instantiations are needed. 
//
//   [ B1 B5 B9  B13 ] 
//   [ B2 B6 B10 B14 ] 
//   [ B3 B7 B11 B15 ]
//   [ B4 B8 B12 B16 ]
//     
//   Each B is a byte that will be instatiated in the LUT
////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps

module Substitution(input [127:0] Data_in, input CLK, output reg [127:0] Data_out);

wire [127:0] Data_phold;

// Start from B1 to B16

SubLUT B1(.B_in(Data_in[7:0]),.B_out(Data_phold[7:0]));
SubLUT B2(.B_in(Data_in[15:8]),.B_out(Data_phold[15:8]));
SubLUT B3(.B_in(Data_in[23:16]),.B_out(Data_phold[23:16]));
SubLUT B4(.B_in(Data_in[31:24]),.B_out(Data_phold[31:24]));
SubLUT B5(.B_in(Data_in[39:32]),.B_out(Data_phold[39:32]));
SubLUT B6(.B_in(Data_in[47:40]),.B_out(Data_phold[47:40]));
SubLUT B7(.B_in(Data_in[55:48]),.B_out(Data_phold[55:48]));
SubLUT B8(.B_in(Data_in[63:56]),.B_out(Data_phold[63:56]));
SubLUT B9(.B_in(Data_in[71:64]),.B_out(Data_phold[71:64]));
SubLUT B10(.B_in(Data_in[79:72]),.B_out(Data_phold[79:72]));
SubLUT B11(.B_in(Data_in[87:80]),.B_out(Data_phold[87:80]));
SubLUT B12(.B_in(Data_in[95:88]),.B_out(Data_phold[95:88]));
SubLUT B13(.B_in(Data_in[103:96]),.B_out(Data_phold[103:96]));
SubLUT B14(.B_in(Data_in[111:104]),.B_out(Data_phold[111:104]));
SubLUT B15(.B_in(Data_in[119:112]),.B_out(Data_phold[119:112]));
SubLUT B16(.B_in(Data_in[127:120]),.B_out(Data_phold[127:120]));

always @ (posedge CLK) begin
	
    Data_out <= Data_phold ;

end

endmodule