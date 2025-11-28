module DeJdr(clk, suivant_n, lancer_n, typ0, typ1, typ2, typ3, res0, res1);

input clk;
input suivant_n; // 0 lorsque pressé
input lancer_n;  // 0 lorsque pressé

output[6:0] typ0, typ1, typ2, typ3;
output[6:0] res0, res1;

wire[6:0] de_min;
wire[6:0] de_max;

SelectD select(suivant, de_min, de_max, typ0, typ1, typ2, typ3);
LancerD lance(clk, lancer, de_min, de_max, res0, res1);

endmodule
