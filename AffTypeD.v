module AffTypeD(bcd0, bcd1, bcd2, en1, en2, hex0, hex1, hex2, hex3);

input[3:0] bcd0, bcd1, bcd2;
input en1, en2;
output[3:0] hex0, hex1, hex2, hex3;

Aff7Seg aff0(4'hD, 1, hex0); // 0xD (13) pour "d"
Aff7Seg aff1(bcd0, 1, hex1); // Toujours allumé (on affiche au moins un chiffre)
Aff7Seg aff2(bcd1, en1, hex2);
Aff7Seg aff3(bcd2, en2, hex3);

endmodule
