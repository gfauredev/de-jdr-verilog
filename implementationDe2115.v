module implementationDe2115(CLOCK_50, KEY, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);

input CLOCK_50;
input [1:0] KEY;
output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

deJdr de(CLOCK_50, KEY[0], KEY[1], HEX3, HEX2, HEX1, HEX0, HEX5, HEX4);

endmodule
