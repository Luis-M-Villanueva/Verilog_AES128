// By: Luis Villanueva
//     ECE176 Advanced Digital Logic
`timescale 1ns/100ps

module addKeyt;

reg [127:0] key_in;
reg [127:0] data_in;
reg CLK;
wire [127:0] data_out;

addKey u1(.data_in(data_in),.key_in(key_in),.CLK(CLK),.en_data(data_out));

initial begin

key_in = 128'h0;
data_in = 128'h0;
CLK = 0;
end

always #5 CLK = ~CLK; 
initial begin

#2 key_in = 128'hA;
data_in = 128'hBAEFC;
#6 $display(" \t ADD \t \n \t %h \t \n" , data_out);

end

endmodule