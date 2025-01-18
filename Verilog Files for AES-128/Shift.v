////////////////////////////////////////////////////////
// Title: Shift Row
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic 
//
// Description:
//       This module will shift the rows 
//       needed for the top module. The first row
//       is not shifted. The shift starts at row 2
//       it is shifted by its row#-1. So, row 2 gets 
//       shifted to the left 1 time. Row 3, 2 times.
//       Row 4, 3 times.   
// 
//  Row1  [ B1 B5 B9  B13 ] no shift 
//  Row2  [ B2 B6 B10 B14 ] <- 1 shift 
//  Row3  [ B3 B7 B11 B15 ] <- <- 2 shifts
//  Row4  [ B4 B8 B12 B16 ] <- <- <- 3 shifts 
//  
//           Shifted Rows
//  Row1 [ B1  B5  B9  B13 ]
//  Row2 [ B6  B10 B14 B2  ]
//  Row3 [ B11 B15 B3  B7  ]
//  Row4 [ B16 B4  B8  B12 ]  
//
////////////////////////////////////////////////////////

`timescale 1ns/100ps
module shiftrow(input [127:0] Data_in, input CLK, output reg [127:0] Data_out);


always @ (posedge CLK)begin

// First Row
Data_out[7:0]<=Data_in[7:0];
Data_out[39:32]<=Data_in[39:32];
Data_out[71:64]<=Data_in[71:64];
Data_out[103:96]<=Data_in[103:96];

//Second Row
Data_out[15:8]<=Data_in[47:40];
Data_out[47:40]<=Data_in[79:72];
Data_out[79:72]<=Data_in[111:104];
Data_out[111:104]<=Data_in[15:8];

//Third Row
Data_out[23:16]<=Data_in[87:80];
Data_out[55:48]<=Data_in[119:112];
Data_out[87:80]<=Data_in[23:16];
Data_out[119:112]<=Data_in[55:48];

//Fourth Row
Data_out[31:24]<=Data_in[127:120];
Data_out[63:56]<=Data_in[31:24];
Data_out[95:88]<=Data_in[63:56];
Data_out[127:120]<=Data_in[95:88];

end

endmodule
 