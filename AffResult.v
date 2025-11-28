module AffResult(result, hex0, hex1);

input[6:0] result;
output[6:0] hex0, hex1;

Aff7Seg aff0(result / 10, 1, hex0);
Aff7Seg aff1(result % 10, 1, hex1);

endmodule
