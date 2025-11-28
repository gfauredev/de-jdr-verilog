module LancerD(clk, lancer, dMin, dMax, hex0, hex1);

input clk, lancer;
input[6:0] dMin, dMax;

output[6:0] hex0, hex1;

wire[6:0] entropy, resultat;

Cnt #(7, 100)cnt(clk, entropy);
Result res(lancer, entropy, dMin, dMax, resultat);
AffResult aff(resultatD, hex0, hex1);

endmodule
