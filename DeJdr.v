module DeJdr(clk, suivant_n, lancer_n, typ_d, typ100, typ10, typ1, res10, res1);

input clk;
input suivant_n; // 0 lorsque pressé
input lancer_n;  // 0 lorsque pressé

output[6:0] typ_d, typ100, typ10, typ1;
output[6:0] res10, res1;

wire[6:0] min_de;
wire[6:0] max_de;

SelectD select(suivant_n, min_de, max_de, typ_d, typ100, typ10, typ1);
LancerD lance(clk, lancer_n, min_de, max_de, res10, res1);

endmodule
