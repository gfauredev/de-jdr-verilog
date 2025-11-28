module Cnt(trig, q);

parameter BUS_SIZE = 4; // Nombre de bits vecteur sortie
parameter MODULO = 16;  // Modulo du compteur (si vecteur de sortie assez grand)
parameter EDGE = 1;     // Compte sur les fronts montants (1) ou descendants (0)

input trig;
output[(BUS_SIZE - 1):0] q;
reg[(BUS_SIZE - 1):0] q;

initial q <= 0; // Initialise la sortie à 0
// if (MODULO > (1 << BUS_SIZE)) ERROR

assign trig_polar = (EDGE == 1) ? trig : ~trig;

always @(posedge(trig_polar)) begin
  // q <= (q + 1) % MODULO;
  if (q < MODULO - 1) q <= q + 1;
  else q <= 0;
end

endmodule
