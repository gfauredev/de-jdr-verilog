module result(lancer, entropy, dMin, dMax, resultatD);

input lancer;
input[6:0] entropy; // Nombre "aléatoire" (inconnu au moment du lancer)
input[6:0] dMin, dMax;

output[6:0] resultatD;
reg[6:0] resultatD;

initial resultatD <= 0;

always @(negedge lancer) begin
  resultatD <= (entropy + dMin) % dMax;
end

endmodule
