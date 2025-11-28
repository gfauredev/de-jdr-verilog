module SelectD(suivant, min_de, max_de, hex0, hex1, hex2, hex3);

input suivant;
output[6:0] min_de, max_de;
output[6:0] hex0, hex1, hex2, hex3;

wire[2:0] id_de;
wire en0, en1;

cnt #(3, 8, 0)cntTypeD(suivant, id_de);
BornerD borner(id_de, min_de, max_de);
ConvertBornesAffichage convert(min_de, max_de, bcd0, bcd1, bcd2, en0, en1);
AffTypeD aff(bcd0, bcd1, bcd2, en0, en1, hex0, hex1, hex2, hex3);

endmodule
