module SelectD(suivant, dMin, dMax, hex0, hex1, hex2, hex3);

input suivant;
output[6:0] dMin, dMax;
output[6:0] hex0, hex1, hex2, hex3;

wire[2:0] idD;
wire en0, en1;

cnt #(3, 8, 0)cntTypeD(suivant, idD);
BornerD borner(idD, dMin, dMax);
ConvertBornesAffichage convert(dMin, dMax, bcd0, bcd1, bcd2, en0, en1);
AffTypeD aff(bcd0, bcd1, bcd2, en0, en1, hex0, hex1, hex2, hex3);

endmodule
