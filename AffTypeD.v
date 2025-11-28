module AffTypeD(bcd100, bcd10, bcd1, en100, en10, hex_d, hex100, hex10, hex1);

input[3:0] bcd100, bcd10, bcd1;
input en100, en10;
output[3:0] hex_d, hex100, hex10, hex1;

Aff7Seg aff_d(4'hD, 1, hex_d);         // 0xD (13) pour "d"
Aff7Seg aff100(bcd100, en100, hex100); // Centaines
Aff7Seg aff10(bcd10, en10, hex10);     // Dizaines
Aff7Seg aff1(bcd1, 1, hex1);           // Toujours allumé (au moins un chiffre)

endmodule
