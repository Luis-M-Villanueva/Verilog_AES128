//////////////////////////////////////////////////////////////////////////////
// Title: Key Scheduler/Creation
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
// 
// Description:
//      This will be the key scheduler/expander. It will take the key in and give out a key for its round. 
//	The way it works is take in the key and seperate into 4 words. Create a subsitution and rotation and
//	XOR'd with the R_Con for the MSB word W4. For the next key W5 take the W4* that has been manipulated. 		
//	Then XOR that W4* by the previous W1. Then take the W5 and XOR it with the previous W2 to get W6. Then		
//	keep going until you reach the last W8. This will go on until all the keys are set.		
//			
//		
//    
//          W1 W2 W3  W4
//  Row1  [ B1 B5 B9  B13 ] 
//  Row2  [ B2 B6 B10 B14 ]  
//  Row3  [ B3 B7 B11 B15 ] 
//  Row4  [ B4 B8 B12 B16 ] 
//   
////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps




module key_expansion(input [127:0] key_in, input CLK, [31:0] r_i, output [127:0] key_out);

reg [31:0] word_c2,word_c;
reg [127:0] key_e;
wire [31:0] word_im;



 
//ROT Word
assign word_c[7:0] = key_in[111:104]; 
assign word_c[15:8] = key_in[119:112]; 
assign word_c[23:16] = key_in[127:120]; 
assign word_c[31:24] = key_in[103:96]; 

//SUB Word
SubLUT B1(.B_in(word_c[7:0]),.B_out(word_im[7:0]));
SubLUT B2(.B_in(word_c[15:8]),.B_out(word_im[15:8]));
SubLUT B3(.B_in(word_c[23:16]),.B_out(word_im[23:16]));
SubLUT B4(.B_in(word_c[31:24]),.B_out(word_im[31:24]));

always @ (*) begin 
word_c2[31:0] = word_im[31:0];
word_c2[7:0] = word_c2[7:0] ^ r_con(r_i);

key_e[31:0]  = word_c2[31:0]^key_in[31:0];
key_e[63:32] = key_e[31:0]^key_in[63:32];
key_e[95:64] = key_e[63:32]^key_in[95:64];
key_e[127:96]= key_e[95:64]^key_in[127:96];
end

assign key_out[127:0] = key_e[127:0];


//assign key_out[127:0] = ;

// r_con function
function [7:0] r_con;

input [7:0] r_i;

case(r_i)
	8'h1:r_con=8'h01;
	8'h2:r_con=8'h02;
	8'h3:r_con=8'h04;
	8'h4:r_con=8'h08;
	8'h5:r_con=8'h10;
	8'h6:r_con=8'h20;
	8'h7:r_con=8'h40;
	8'h8:r_con=8'h80;
	8'h9:r_con=8'h1B;
	8'hA:r_con=8'h36;
	default: r_con = 8'h00;
endcase
endfunction

endmodule