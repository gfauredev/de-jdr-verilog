module deJdr(clk, suivant, lancer, typ0, typ1, typ2, typ3, res0, res1);

input clk;
input suivant;
input lancer;

output[6:0] typ0, typ1, typ2, typ3;
output[6:0] res0, res1;

wire[6:0] dMin;
wire[6:0] dMax;

selectD select(suivant, dMin, dMax, typ0, typ1, typ2, typ3);
lancerD lancement(clk, lancer, dMin, dMax, res0, res1);

endmodule
