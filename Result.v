module Result(lancer, entropie, min_de, max_de, resultat);

input lancer;
input[6:0] entropie; // Nombre "aléatoire" (inconnu au moment du lancer)
input[6:0] min_de, max_de;

output[6:0] resultat;
reg[6:0] resultat;

initial resultat <= 0;

always @(negedge lancer) begin
  resultat <= (entropie + min_de) % max_de;
end

endmodule
