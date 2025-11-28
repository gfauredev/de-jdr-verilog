module BornerD(idD, dMin, dMax);

input[2:0] idD;

output[6:0] dMin, dMax;
reg[6:0] dMin, dMax;

always @(idD) begin
  case (idD)
    0: begin
      dMin<=1;
      dMax<=4;
    end
    1: begin
      dMin<=1;
      dMax<=6;
    end
    2: begin
      dMin<=1;
      dMax<=8;
    end
    3: begin
      dMin<=0;
      dMax<=9;
    end
    4: begin
      dMin<=1;
      dMax<=12;
    end
    5: begin
      dMin<=1;
      dMax<=20;
    end
    6: begin
      dMin<=1;
      dMax<=30;
    end
    7: begin
      dMin<=0;
      dMax<=99;
    end
    default: begin
      dMin<=1; // Dé 4 par défaut, sécurité (normalement idD <= 7)
      dMax<=4;
    end
  endcase
end

endmodule
