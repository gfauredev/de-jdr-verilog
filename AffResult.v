module AffResult(result, hex10, hex1);

input[6:0] result;
output[6:0] hex10, hex1;

Aff7Seg aff10(result / 10, 1, hex10);
Aff7Seg aff1(result % 10, 1, hex1);

endmodule
