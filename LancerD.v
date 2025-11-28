module LancerD(clk, lancer, min_de, max_de, hex0, hex1);

input clk, lancer;
input[6:0] min_de, max_de;

output[6:0] hex0, hex1;

wire[6:0] entropie, resultat;

Cnt #(7, 100)cnt(clk, entropie);
Result res(lancer, entropie, min_de, max_de, resultat);
AffResult aff(resultat, hex0, hex1);

endmodule
