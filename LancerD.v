module LancerD(clk, lancer, min_de, faces_de, hex10, hex1);

input clk, lancer;
input[6:0] min_de, faces_de;

output[6:0] hex10, hex1;

wire[6:0] entropie, resultat;

Cnt #(7, 100)cnt(clk, entropie);
Result res(lancer, entropie, min_de, faces_de, resultat);
AffResult aff(resultat, hex10, hex1);

endmodule
