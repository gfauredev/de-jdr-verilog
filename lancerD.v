module lancerD(clk, lancer, dMin, dMax, hex0, hex1);

input clk, lancer;
input[6:0] dMin, dMax;

output[6:0] hex0, hex1;

wire[6:0] entropy, resultatD;

cnt #(7, 100)cntEntropy(clk, entropy);
result res(lancer, entropy, dMin, dMax, resultatD);
affichageResult aff(resultatD, hex0, hex1);

endmodule
