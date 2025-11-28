module Result(lancer, entropie, min_de, faces_de, resultat);

input lancer;
input[6:0] entropie; // Nombre "aléatoire" (inconnu au moment du lancer)
input[6:0] min_de, faces_de;

output[6:0] resultat;
reg[6:0] resultat;

initial resultat <= 1;

always @(negedge lancer) begin
  resultat <= entropie % faces_de + min_de;
end

endmodule
