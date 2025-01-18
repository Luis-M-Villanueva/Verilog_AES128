//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Title: Mix Columns
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic 
//
// Description:
//       This module will mix the columns of the data input.
//       The matrix will multiply the column it is in by
//       The row of the state matrix. Then XOR the values together
//       to get the new byte value. A function was created to 
//       multiply by x2 and x3.      
//     
//             Data Matrix				State Matrix
//              C1 C2 C3  C4		       C1 C2 C3  C4
//      Row1  [ B1 B5 B9  B13 ] 		Row1  [ 2  3  1  1 ]
//      Row2  [ B2 B6 B10 B14 ] 		Row2  [ 1  2  3  1 ]
//      Row3  [ B3 B7 B11 B15 ] 		Row3  [ 1  1  2  3 ] 
//      Row4  [ B4 B8 B12 B16 ]                 Row4  [ 3  1  1  2 ]
//
//      For Example for B2 new value after Mix Columns would be to take the column its in, so C1. And multipy this whole column
//      by the row the Byte is in. So for B1 it would be C1 by R2. Then each value XOR'd together to create the Byte value for B2.
//        
//           (B1*1)^(B2*2)^(B3*3)^(B4*1) = B2_new 
//
//      2 Multiplication functions were created. One for x2 and another for x3. 
//
//      x2 Multiplier
//      -It will shift the Byte to the Left by 1. If the MSB is 1 it must be XOR'd with 00011011
//      x3 Multiplier
//      -It wil lshift the Byte to the left by 1 and XOR by it initial input. Then it will be XOR'd with 00011011 if the first byte had an MSB of 1.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps 

module MixCol(input [127:0] Data_in, input CLK, output reg [127:0] Data_out);

reg [127:0] Data_phold;
reg [127:0] Data_mulval;

always @ (posedge CLK) begin

Data_mulval <= Data_in;

// Column 1
Data_phold[7:0]   <= mul_x2(Data_mulval[7:0]) ^ mul_x3(Data_mulval[15:8]) ^ Data_mulval[23:16]         ^ Data_mulval [31:24];
Data_phold[15:8]  <= Data_mulval[7:0]         ^ mul_x2(Data_mulval[15:8]) ^ mul_x3(Data_mulval[23:16]) ^ Data_mulval [31:24];
Data_phold[23:16] <= Data_mulval[7:0]         ^ Data_mulval[15:8]         ^ mul_x2(Data_mulval[23:16]) ^ mul_x3(Data_mulval[31:24]);
Data_phold[31:24] <= mul_x3(Data_mulval[7:0]) ^ Data_mulval[15:8]         ^ Data_mulval[23:16]         ^ mul_x2(Data_mulval[31:24]);

//Column 2
Data_phold[39:32] <= mul_x2(Data_mulval[39:32]) ^ mul_x3(Data_mulval[47:40]) ^ Data_mulval[55:48]         ^ Data_mulval [63:56];
Data_phold[47:40] <= Data_mulval[39:32]         ^ mul_x2(Data_mulval[47:40]) ^ mul_x3(Data_mulval[55:48]) ^ Data_mulval [63:56];
Data_phold[55:48] <= Data_mulval[39:32]         ^ Data_mulval[47:40]         ^ mul_x2(Data_mulval[55:48]) ^ mul_x3(Data_mulval[63:56]);
Data_phold[63:56] <= mul_x3(Data_mulval[39:32]) ^ Data_mulval[47:40]         ^ Data_mulval[55:48]         ^ mul_x2(Data_mulval[63:56]);

//Column 3
Data_phold[71:64] <= mul_x2(Data_mulval[71:64]) ^ mul_x3(Data_mulval[79:72]) ^ Data_mulval[87:80]         ^ Data_mulval [95:88];
Data_phold[79:72] <= Data_mulval[71:64]         ^ mul_x2(Data_mulval[79:72]) ^ mul_x3(Data_mulval[87:80]) ^ Data_mulval [95:88];
Data_phold[87:80] <= Data_mulval[71:64]         ^ Data_mulval[79:72]         ^ mul_x2(Data_mulval[87:80]) ^ mul_x3(Data_mulval[95:88]);
Data_phold[95:88] <= mul_x3(Data_mulval[71:64]) ^ Data_mulval[79:72]         ^ Data_mulval[87:80]         ^ mul_x2(Data_mulval[95:88]);

//Column 4
Data_phold[103:96]  <= mul_x2(Data_mulval[103:96]) ^ mul_x3(Data_mulval[111:104]) ^ Data_mulval[119:112]         ^ Data_mulval [127:120];
Data_phold[111:104] <= Data_mulval[103:96]         ^ mul_x2(Data_mulval[111:104]) ^ mul_x3(Data_mulval[119:112]) ^ Data_mulval [127:120];
Data_phold[119:112] <= Data_mulval[103:96]         ^ Data_mulval[111:104]         ^ mul_x2(Data_mulval[119:112]) ^ mul_x3(Data_mulval[127:120]);
Data_phold[127:120] <= mul_x3(Data_mulval[103:96]) ^ Data_mulval[111:104]         ^ Data_mulval[119:112]         ^ mul_x2(Data_mulval[127:120]);

Data_out[127:0] <= Data_phold[127:0];
end




//function multiply by 2
function [7:0] mul_x2;

input [7:0] D_in;

mul_x2 = (D_in[7]==1'b1)? ({D_in[6:0],1'b0} ^ (8'b00011011)):({D_in[6:0],1'b0});

endfunction

//function multiply by 3
function [7:0] mul_x3;  

input [7:0] D_in;
reg   [7:0] D_phold;
begin 
D_phold = D_in;

mul_x3 = (D_phold[7]==1'b1)? ({D_phold[6:0],1'b0} ^ D_in ^ (8'b00011011)):({D_phold[6:0],1'b0}^D_in);
end
endfunction

endmodule