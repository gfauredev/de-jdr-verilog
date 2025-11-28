module BornerD(id_de, min_de, max_de);

input[2:0] id_de;

output[6:0] min_de, max_de;
reg[6:0] min_de, max_de;

always @(id_de) begin
  case (id_de)
    0: begin
      min_de<=1;
      max_de<=4;
    end
    1: begin
      min_de<=1;
      max_de<=6;
    end
    2: begin
      min_de<=1;
      max_de<=8;
    end
    3: begin
      min_de<=0;
      max_de<=9;
    end
    4: begin
      min_de<=1;
      max_de<=12;
    end
    5: begin
      min_de<=1;
      max_de<=20;
    end
    6: begin
      min_de<=1;
      max_de<=30;
    end
    7: begin
      min_de<=0;
      max_de<=99;
    end
    default: begin
      min_de<=1; // Dé 4 par défaut, sécurité (normalement id_de <= 7)
      max_de<=4;
    end
  endcase
end

endmodule
