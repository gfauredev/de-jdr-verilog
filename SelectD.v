module SelectD(suivant, min_de, max_de, hex_d, hex100, hex10, hex1);

input suivant; // Passer au type de dé suivant
output[6:0] min_de, max_de;
output[6:0] hex_d, hex100, hex10, hex1;

wire[2:0] id_de;
wire en100, en10;

Cnt #(3, 8, 0)cntTypeD(suivant, id_de);
BornerD borner(id_de, min_de, max_de);
ConvertBornesAffichage convert(min_de, max_de, bcd100, bcd10, bcd1, en100, en10);
AffTypeD aff(bcd100, bcd10, bcd1, en100, en10, hex_d, hex100, hex10, hex1);

endmodule
