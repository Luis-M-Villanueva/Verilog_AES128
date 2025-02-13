///////////////////////////////////////////////////////
// Title: Subsitution Look Up Table
// 
// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
// 
// Description:
//     This will be a LUT for the subitution needed 
//     for each byte location. Since This is a fixed 
//     value a case statement can be used for all the 
//     possible subitutions. This will be for every 
//     decimal value from 0x00 to 0xFF.
//////////////////////////////////////////////////////

`timescale 1ns/100ps
module SubLUT(input [7:0] B_in, output reg [7:0] B_out);


always @ (B_in) begin

    case(B_in)
	8'h00: B_out = 8'h63;
	8'h01: B_out = 8'h7C;
	8'h02: B_out = 8'h77;
	8'h03: B_out = 8'h7B;
	8'h04: B_out = 8'hF2;
	8'h05: B_out = 8'h6B;
	8'h06: B_out = 8'h6F;
	8'h07: B_out = 8'hC5;
	8'h08: B_out = 8'h30;
	8'h09: B_out = 8'h01;
	8'h0A: B_out = 8'h67;
	8'h0B: B_out = 8'h2B;
	8'h0C: B_out = 8'hFE;
	8'h0D: B_out = 8'hD7;
	8'h0E: B_out = 8'hAB;
	8'h0F: B_out = 8'h76;
	8'h10: B_out = 8'hCA;
	8'h11: B_out = 8'h82;
	8'h12: B_out = 8'hC9;
	8'h13: B_out = 8'h7D;
	8'h14: B_out = 8'hFA;
	8'h15: B_out = 8'h59;
	8'h16: B_out = 8'h47;
	8'h17: B_out = 8'hF0;
	8'h18: B_out = 8'hAD;
	8'h19: B_out = 8'hD4;
	8'h1A: B_out = 8'hA2;
	8'h1B: B_out = 8'hAF;
	8'h1C: B_out = 8'h9C;
	8'h1D: B_out = 8'hA4;
	8'h1E: B_out = 8'h72;
	8'h1F: B_out = 8'hC0;
	8'h20: B_out = 8'hB7;
	8'h21: B_out = 8'hFD;
	8'h22: B_out = 8'h93;
	8'h23: B_out = 8'h26;
	8'h24: B_out = 8'h36;
	8'h25: B_out = 8'h3F;
	8'h26: B_out = 8'hF7;
	8'h27: B_out = 8'hCC;
	8'h28: B_out = 8'h34;
	8'h29: B_out = 8'hA5;
	8'h2A: B_out = 8'hE5;
	8'h2B: B_out = 8'hF1;
	8'h2C: B_out = 8'h71;
	8'h2D: B_out = 8'hD8;
	8'h2E: B_out = 8'h31;
	8'h2F: B_out = 8'h15;
	8'h30: B_out = 8'h04;
	8'h31: B_out = 8'hC7;
	8'h32: B_out = 8'h23;
	8'h33: B_out = 8'hC3;
	8'h34: B_out = 8'h18;
	8'h35: B_out = 8'h96;
	8'h36: B_out = 8'h05;
	8'h37: B_out = 8'h9A;
	8'h38: B_out = 8'h07;
	8'h39: B_out = 8'h12;
	8'h3A: B_out = 8'h80;
	8'h3B: B_out = 8'hE2;
	8'h3C: B_out = 8'hEB;
	8'h3D: B_out = 8'h27;
	8'h3E: B_out = 8'hB2;
	8'h3F: B_out = 8'h75;
	8'h40: B_out = 8'h09;
	8'h41: B_out = 8'h83;
	8'h42: B_out = 8'h2C;
	8'h43: B_out = 8'h1A;
	8'h44: B_out = 8'h1B;
	8'h45: B_out = 8'h6E;
	8'h46: B_out = 8'h5A;
	8'h47: B_out = 8'hA0;
	8'h48: B_out = 8'h52;
	8'h49: B_out = 8'h3B;
	8'h4A: B_out = 8'hD6;
	8'h4B: B_out = 8'hB3;
	8'h4C: B_out = 8'h29;
	8'h4D: B_out = 8'hE3;
	8'h4E: B_out = 8'h2F;
	8'h4F: B_out = 8'h84;
	8'h50: B_out = 8'h53;
	8'h51: B_out = 8'hD1;
	8'h52: B_out = 8'h00;
	8'h53: B_out = 8'hED;
	8'h54: B_out = 8'h20;
	8'h55: B_out = 8'hFC;
	8'h56: B_out = 8'hB1;
	8'h57: B_out = 8'h5B;
	8'h58: B_out = 8'h6A;
	8'h59: B_out = 8'hCB;
	8'h5A: B_out = 8'hBE;
	8'h5B: B_out = 8'h39;
	8'h5C: B_out = 8'h4A;
	8'h5D: B_out = 8'h4C;
	8'h5E: B_out = 8'h58;
	8'h5F: B_out = 8'hCF;
	8'h60: B_out = 8'hD0;
	8'h61: B_out = 8'hEF;
	8'h62: B_out = 8'hAA;
	8'h63: B_out = 8'hFB;
	8'h64: B_out = 8'h43;
	8'h65: B_out = 8'h4D;
	8'h66: B_out = 8'h33;
	8'h67: B_out = 8'h85;
	8'h68: B_out = 8'h45;
	8'h69: B_out = 8'hF9;
	8'h6A: B_out = 8'h02;
	8'h6B: B_out = 8'h7F;
	8'h6C: B_out = 8'h50;
	8'h6D: B_out = 8'h3C;
	8'h6E: B_out = 8'h9F;
	8'h6F: B_out = 8'hA8;
	8'h70: B_out = 8'h51;
	8'h71: B_out = 8'hA3;
	8'h72: B_out = 8'h40;
	8'h73: B_out = 8'h8F;
	8'h74: B_out = 8'h92;
	8'h75: B_out = 8'h9D;
	8'h76: B_out = 8'h38;
	8'h77: B_out = 8'hF5;
	8'h78: B_out = 8'hBC;
	8'h79: B_out = 8'hB6;
	8'h7A: B_out = 8'hDA;
	8'h7B: B_out = 8'h21;
	8'h7C: B_out = 8'h10;
	8'h7D: B_out = 8'hFF;
	8'h7E: B_out = 8'hF3;
	8'h7F: B_out = 8'hD2;
	8'h80: B_out = 8'hCD;
	8'h81: B_out = 8'h0C;
	8'h82: B_out = 8'h13;
	8'h83: B_out = 8'hEC;
	8'h84: B_out = 8'h5F;
	8'h85: B_out = 8'h97;
	8'h86: B_out = 8'h44;
	8'h87: B_out = 8'h17;
	8'h88: B_out = 8'hC4;
	8'h89: B_out = 8'hA7;
	8'h8A: B_out = 8'h7E;
	8'h8B: B_out = 8'h3D;
	8'h8C: B_out = 8'h64;
	8'h8D: B_out = 8'h5D;
	8'h8E: B_out = 8'h19;
	8'h8F: B_out = 8'h73;
	8'h90: B_out = 8'h60;
	8'h91: B_out = 8'h81;
	8'h92: B_out = 8'h4F;
	8'h93: B_out = 8'hDC;
	8'h94: B_out = 8'h22;
	8'h95: B_out = 8'h2A;
	8'h96: B_out = 8'h90;
	8'h97: B_out = 8'h88;
	8'h98: B_out = 8'h46;
	8'h99: B_out = 8'hEE;
	8'h9A: B_out = 8'hB8;
	8'h9B: B_out = 8'h14;
	8'h9C: B_out = 8'hDE;
	8'h9D: B_out = 8'h5E;
	8'h9E: B_out = 8'h0B;
	8'h9F: B_out = 8'hDB;
	8'hA0: B_out = 8'hE0;
	8'hA1: B_out = 8'h32;
	8'hA2: B_out = 8'h3A;
	8'hA3: B_out = 8'h0A;
	8'hA4: B_out = 8'h49;
	8'hA5: B_out = 8'h06;
	8'hA6: B_out = 8'h24;
	8'hA7: B_out = 8'h5C;
	8'hA8: B_out = 8'hC2;
	8'hA9: B_out = 8'hD3;
	8'hAA: B_out = 8'hAC;
	8'hAB: B_out = 8'h62;
	8'hAC: B_out = 8'h91;
	8'hAD: B_out = 8'h95;
	8'hAE: B_out = 8'hE4;
	8'hAF: B_out = 8'h79;
	8'hB0: B_out = 8'hE7;
	8'hB1: B_out = 8'hC8;
	8'hB2: B_out = 8'h37;
	8'hB3: B_out = 8'h6D;
	8'hB4: B_out = 8'h8D;
	8'hB5: B_out = 8'hD5;
	8'hB6: B_out = 8'h4E;
	8'hB7: B_out = 8'hA9;
	8'hB8: B_out = 8'h6C;
	8'hB9: B_out = 8'h56;
	8'hBA: B_out = 8'hF4;
	8'hBB: B_out = 8'hEA;
	8'hBC: B_out = 8'h65;
	8'hBD: B_out = 8'h7A;
	8'hBE: B_out = 8'hAE;
	8'hBF: B_out = 8'h08;
	8'hC0: B_out = 8'hBA;
	8'hC1: B_out = 8'h78;
	8'hC2: B_out = 8'h25;
	8'hC3: B_out = 8'h2E;
	8'hC4: B_out = 8'h1C;
	8'hC5: B_out = 8'hA6;
	8'hC6: B_out = 8'hB4;
	8'hC7: B_out = 8'hC6;
	8'hC8: B_out = 8'hE8;
	8'hC9: B_out = 8'hDD;
	8'hCA: B_out = 8'h74;
	8'hCB: B_out = 8'h1F;
	8'hCC: B_out = 8'h4B;
	8'hCD: B_out = 8'hBD;
	8'hCE: B_out = 8'h8B;
	8'hCF: B_out = 8'h8A;
	8'hD0: B_out = 8'h70;
	8'hD1: B_out = 8'h3E;
	8'hD2: B_out = 8'hB5;
	8'hD3: B_out = 8'h66;
	8'hD4: B_out = 8'h48;
	8'hD5: B_out = 8'h03;
	8'hD6: B_out = 8'hF6;
	8'hD7: B_out = 8'h0E;
	8'hD8: B_out = 8'h61;
	8'hD9: B_out = 8'h35;
	8'hDA: B_out = 8'h57;
	8'hDB: B_out = 8'hB9;
	8'hDC: B_out = 8'h86;
	8'hDD: B_out = 8'hC1;
	8'hDE: B_out = 8'h1D;
	8'hDF: B_out = 8'h9E;
	8'hE0: B_out = 8'hE1;
	8'hE1: B_out = 8'hF8;
	8'hE2: B_out = 8'h98;
	8'hE3: B_out = 8'h11;
	8'hE4: B_out = 8'h69;
	8'hE5: B_out = 8'hD9;
	8'hE6: B_out = 8'h8E;
	8'hE7: B_out = 8'h94;
	8'hE8: B_out = 8'h9B;
	8'hE9: B_out = 8'h1E;
	8'hEA: B_out = 8'h87;
	8'hEB: B_out = 8'hE9;
	8'hEC: B_out = 8'hCE;
	8'hED: B_out = 8'h55;
	8'hEE: B_out = 8'h28;
	8'hEF: B_out = 8'hDF;
	8'hF0: B_out = 8'h8C;
	8'hF1: B_out = 8'hA1;
	8'hF2: B_out = 8'h89;
	8'hF3: B_out = 8'h0D;
	8'hF4: B_out = 8'hBF;
	8'hF5: B_out = 8'hE6;
	8'hF6: B_out = 8'h42;
	8'hF7: B_out = 8'h68;
	8'hF8: B_out = 8'h41;
	8'hF9: B_out = 8'h99;
	8'hFA: B_out = 8'h2D;
	8'hFB: B_out = 8'h0F;
	8'hFC: B_out = 8'hB0;
	8'hFD: B_out = 8'h54;
	8'hFE: B_out = 8'hBB;
	8'hFF: B_out = 8'h16;
	default: B_out = 8'h00;
	endcase
end
endmodule